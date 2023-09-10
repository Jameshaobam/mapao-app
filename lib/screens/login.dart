import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/mainscreen.dart';
import 'package:result_type/result_type.dart';
import 'package:mapao_app/controller/get_maincontroller.dart';
import '../controller/auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static String routeName = "/login";

  final AuthController _authController = Get.put(AuthController());
  final MainController _mainController = Get.put(MainController());
  final TextEditingController _usercontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  void handleLoginUser(String user, String pass) async {
    _mainController.updateIsLoggingIn(true);
    var res = await _authController.logInUser(user, pass);
    _mainController.updateIsLoggingIn(false);

    if (res.isSuccess) {
      Get.offNamed(MainPage.routeName);
    }
    if (res.isFailure) {
      log("error : ${res.failure}");
      Get.snackbar("Code :${res.failure["statusCode"]}", res.failure["message"],
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("Login"),
            TextField(
              controller: _usercontroller,
            ),
            TextField(
              controller: _passcontroller,
            ),
            Obx(() => Center(
                  child: _mainController.isLoggingIn.value == true
                      ? const CircularProgressIndicator()
                      : Container(),
                )),
            ElevatedButton(
                onPressed: () async {
                  final user = _usercontroller.text;
                  final pass = _passcontroller.text;
                  handleLoginUser(user, pass);
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
