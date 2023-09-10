import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';

//TODO: Responsive size
double getAdaptiveSize(BuildContext context, dynamic value) {
  // 720 is medium screen height
  return (value / 720) * MediaQuery.of(context).size.height;
}

//Handle Dio exception
Map<String, dynamic> decodeException(dynamic e) {
  int statusCode = -1;
  String message = "An Unknown Error occurred!";

  if (e is DioException) {
    print("dioexception $e");
    if (e.type == DioExceptionType.badResponse) {
      final response = e.response;
      try {
        if (response != null && response.data != null) {
          if (response.data?["code"] != null) {
            message = response.data['messages'][0]["message"];
            statusCode = 401;
          } else {
            if (response.data?['detail'] != null) {
              message = response.data?["detail"];
              print("msg " + message);
            }

            if (response.statusCode != null) {
              statusCode = response.statusCode!;
              print("msg 1 " + statusCode.toString());
            }
          }
        }
      } catch (e) {
        message = "Internal Error Catch";
      }
    } else if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      message = "Request timeout";
      statusCode = 408;
    } else if (e.error is SocketException) {
      message = "Could not connect to server!";
    }
  }

  if (statusCode == -1) {
    // ignore: avoid_print
    print(e);
    StackTrace.current.printError();
  }

  return {
    "message": message,
    "statusCode": statusCode,
  };
}
