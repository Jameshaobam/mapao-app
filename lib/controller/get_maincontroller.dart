import 'dart:developer';

import 'package:get/get.dart';

class MainController extends GetxController{

  RxInt selectedIndex = 0.obs;

  void changeIndex(int index){
    selectedIndex.value = index;

    update();
  }
}