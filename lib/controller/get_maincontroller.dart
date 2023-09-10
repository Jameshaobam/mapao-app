import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mapao_app/models/discover_get_model.dart';

import '../models/review_model.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt categoryId = 0.obs;
  RxString categoryName = RxString('');
  RxBool isLoggedIn = RxBool(false);
  RxBool isLoggingIn = RxBool(false);
  RxString UserName = "".obs;

  Rx<Discover?> discover = Rx(null);

  Rx<List<Review>> reviews = Rx([]);

  void changeIndex(int index) {
    selectedIndex.value = index;

    update();
  }

  void changeCategoryId(int id) {
    categoryId.value = id;

    update();
  }

  void updateTitleCategory(String title) {
    categoryName.value = title;

    update();
  }

  void updateDiscover(Discover discoverObj) {
    discover.value = discoverObj;

    update();
  }

  void updateLoggedIn(bool loggedIn) {
    isLoggedIn.value = loggedIn;

    update();
  }

  void updateIsLoggingIn(bool isLoggin) {
    isLoggingIn.value = isLoggin;

    update();
    if (kDebugMode) {
      // print("logging ${isLoggingIn.value}");
    }
  }

  void updateUsername(String name) {
    if (kDebugMode) {
      print("update inside");
    }
    UserName.value = "name";

    update();
    if (kDebugMode) {
      // print("logging ${isLoggingIn.value}");
    }
  }

  void updateReviewsDiscover(List<Review> re) {
    if (kDebugMode) {
      print("update inside");
    }
    reviews.value = re;
    reviews.refresh();

    if (kDebugMode) {
      // print("logging ${isLoggingIn.value}");
    }
  }
}
