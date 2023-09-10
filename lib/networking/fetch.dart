import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mapao_app/models/review_model.dart';

import './http.dart';
import '../models/discover_get_model.dart';
import '../models/category_model.dart';
import '../models/event.dart';

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
  Map<String, dynamic> detail_data = {};
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

  return [reviews, detail_data];
}

//POST
//-TODO: Add review to discover

Future<Map<String, dynamic>> addReviewDiscover(
    int discoverId, String description) async {
  Map<String, dynamic> response_data = {};

  var res = await dio.post(
    "/discover/$discoverId/add-review/",
    options: Options(
      contentType: "application/json",
    ),
    data: {"description": description},
  );

  if (res.statusCode == 200) {
    response_data = res.data;
  } else {
    response_data = {"detail": "Error adding review"};
    log(response_data.toString());
  }
  return response_data;
}

//TODO: get event list with state name

Future<List<dynamic>> getEventList(String stateName) async {
  List<dynamic> listOfEvents = [];
  List<Event> events = [];
  var res = await dio.get("/event/all/?state=$stateName");
  log("events ${res.data}");
  if (res.statusCode == 200) {
    listOfEvents = res.data["datas"];

    for (Map<String, dynamic> e in listOfEvents) {
      events.add(Event.fromJson(e));
    }
    // events = listOfEvents.map((e) => Event.fromJson(e)).toList();

    log("Events $events");
  } else {
    log("error on events");
  }
  return events;
}
