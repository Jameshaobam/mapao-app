import 'dart:developer';

import 'package:get/get.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import 'package:mapao_app/screens/login.dart';
import 'package:mapao_app/utilities/constants.dart';

import '../models/user.dart';
import '../networking/http.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:result_type/result_type.dart';
import '../utilities/utils.dart';

class AuthController extends GetxController {
  static GetStorage authStorage = GetStorage("auth");
  static const String accessTokenKey = "access";
  static const String refreshTokenKey = "refresh";
  Rx<User?> user = Rx(null);

  final MainController mainController = Get.put(MainController());
  Future<Result> checkLoginUser() async {
    print("access token: ${authStorage.read(accessTokenKey)}");
    print("refresh token: ${authStorage.read(refreshTokenKey)}");
    if (!authStorage.hasData(accessTokenKey) ||
        !authStorage.hasData(refreshTokenKey)) {
      log("No access or refresh");
      return Success(false);
    }
    try {
      var res = await dio.get("/account/isauth/");

      user.value = User.fromJson(res.data);

      return Success(true);
    } catch (e) {
      log("Enter checkUser Error/account/isauth");
      log("error :$e");
      Map<String, dynamic> error = decodeException(e);

      if (error["statusCode"] == -1) {
        return Failure(error);
      }

      authStorage.erase();

      return Success(false);
    }
  }

  Future<Result> logInUser(String username, String password) async {
    try {
      var res = await dio.post(
        "/account/login/",
        options: Options(
          contentType: "application/json",
        ),
        data: {
          'username': username,
          'password': password,
        },
      );
      authStorage.write(accessTokenKey, res.data[accessTokenKey]);
      authStorage.write(refreshTokenKey, res.data[refreshTokenKey]);
      log("${authStorage.read("access")}");

      // authStorage.erase();
      var rtype = await checkLoginUser();
      print(rtype);
      print(rtype.success);
      if (rtype.isFailure) {
        return Failure(rtype.failure);
      }
      return Success(res);
    } catch (e) {
      log("$e");
      Map<String, dynamic> error = decodeException(e);
      authStorage.erase();

      return Failure(error);
    }
  }

  Future<Result> refreshToken() async {
    if (!authStorage.hasData(accessTokenKey) ||
        !authStorage.hasData(refreshTokenKey)) {
      log("Enter no refresh token ");
      return Success(false);
    }

    try {
      var res = await dio.post(
        refresh,
        data: {
          "refresh": authStorage.read(refreshTokenKey),
        },
        options: Options(
          contentType: "application/json",
        ),
      );

      authStorage.write(accessTokenKey, res.data[accessTokenKey]);

      log("Enter refresh request ");
      return Success(true);
    } catch (e) {
      var error = decodeException(e);

      if (error["statusCode"] == -1) {
        return Failure(error);
      }

      authStorage.erase();

      return Success(false);
    }
  }

  void logOut() {
    authStorage.erase();
    Get.offAll(() => LoginPage());
  }
}
