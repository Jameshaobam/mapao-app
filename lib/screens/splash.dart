import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapao_app/screens/login.dart';
import 'package:mapao_app/screens/mainscreen.dart';
import '../controller/auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = "/splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthController authController = Get.put(AuthController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handleCheckLogin();
  }

  Future<void> handleCheckLogin() async {
    var res = await authController.checkLoginUser();

    if (res.isSuccess) {
      print("Splash ${res}");
      if (res.success) {
        Get.offNamed(MainPage.routeName);
      } else {
        Get.offNamed(LoginPage.routeName);
      }
    }
    if (res.isFailure) {
      print("splash: ${res.failure}");
      Get.offNamed(MainPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [Text("Loading....")],
          ),
        ),
      ),
    );
  }
}
