import 'package:dio/dio.dart';
import 'package:mapao_app/utilities/constants.dart';
Dio _createDio(){

  var dio = Dio(

    BaseOptions(baseUrl: API_URL)
  );
    dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        print("On request");
       print(options.data);

        handler.next(options);
      },
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (e, handler) async {
        print("On error");
       print(e);

        handler.next(e);
      },
    ),
  );
  return dio;

}

final dio = _createDio();