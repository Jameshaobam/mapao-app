import 'dart:developer';

import 'package:mapao_app/models/review_model.dart';

import './http.dart';
import '../models/discover_get_model.dart';
import '../models/category_model.dart';

//TODO: get available categories for discover

Future<List<dynamic>> getAvailableCategories() async {
  List<dynamic> datas = [];
  var res = await dio.get("/categories/");
  if (res.statusCode == 200) {
    var categories = res.data["datas"];
    //  print(discoveries);
    for (var category in categories) {
      datas.add(Category.fromJson(category));
    }
  } else {
    log("error on requesting categories");
  }

  return datas;
}


//TODO: get all Discoveries  method

Future<List<dynamic>> getDiscovers() async {
  List<dynamic> datas = [];
  var res = await dio.get("/discover/");
  if (res.statusCode == 200) {
    var discoveries = res.data["datas"];
    //  print(discoveries);
    for (var discover in discoveries) {
      datas.add(Discover.fromJson(discover));
    }
  } else {
    log("error on requesting discovers");
  }

  return datas;
}


//TODO: get discoveries based on the chosen category (id)

Future<List<dynamic>> getCategorizedDiscoveries(int cat) async {
  List<dynamic> datas = [];
  var res = await dio.get("/categorized-discoveries/?cat=$cat");
  if (res.statusCode == 200) {
    var categories = res.data["datas"];
    //  print(discoveries);
    for (var category in categories) {
      datas.add(Discover.fromJson(category));
    }
  } else {
    log("error on requesting categorized discovers");
  }

  return datas;
}


//TODO: get discovery detail with reviews with discovery (id)

Future<List<dynamic>> getDiscoveryDetail(int dis) async {
 Map<String,dynamic> detail_data = {};
  List<Review> reviews = [];
  var res = await dio.get("/discover/$dis/");
  if (res.statusCode == 200) {
     detail_data = res.data;
 
    var reviews_data = detail_data["reviews"];
    for (var review in reviews_data) {
      reviews.add(Review.fromJson(review));
    }
    


  } else {
    log("error on requesting discover detail");
  }

  return [reviews,detail_data];
}
