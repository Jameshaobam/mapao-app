import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;
import 'package:mapao_app/controller/auth.dart';
import 'package:mapao_app/utilities/constants.dart';
import 'dart:developer';

Dio _createDio() {
  final AuthController _authcontroller = getx.Get.put(AuthController());
  var dio = Dio(BaseOptions(baseUrl: API_URL));
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        if (kDebugMode) {
          print("On request");
        }
        if (kDebugMode) {
          print(options.data);
        }
        if (AuthController.authStorage.hasData("access")) {
          var accessToken = AuthController.authStorage.read("access");

          options.headers['Authorization'] = "Bearer $accessToken";
        }

        handler.next(options);
      },
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (e, handler) async {
        var i = isJwtExpiredRes(e);

        if (kDebugMode) {
          print("On error $i");
        }
        if (kDebugMode) {
          print(e.response);
        }
        if (isJwtExpiredRes(e)) {
          var res = await _authcontroller.refreshToken();

          if (res.isSuccess) {
            log("Enter refres is succes");
            if (res.success == true) {
              log("Enter refres is succes false");
              return handler.resolve(await _retry(e.requestOptions));
            }
          }

          getx.Get.snackbar("Token Expired", "Expired");
        }
        _authcontroller.logOut();

        handler.next(e);
      },
    ),
  );
  return dio;
}

bool isJwtExpiredRes(DioException e) {
  print(e.response?.data);
  if (e.requestOptions.path == refresh) {
    return false;
  }

  if (e.response?.statusCode == 401) {
    if (e.response?.data["code"] != null) {
      String msg = e.response?.data['messages'][0]["message"];
      log(msg.contains("Token is invalid or expired").toString());
      if (msg.contains("Token is invalid or expired")) {
        return true;
      }
    }
  }

  return false;
}

Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
  log("Enter retry");
  final options = Options(
    method: requestOptions.method,
    headers: requestOptions.headers,
  );

  return dio.request<dynamic>(
    requestOptions.path,
    data: requestOptions.data,
    queryParameters: requestOptions.queryParameters,
    options: options,
  );
}

final dio = _createDio();
