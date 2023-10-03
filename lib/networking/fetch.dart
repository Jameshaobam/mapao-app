import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mapao_app/models/review_model.dart';

import './http.dart';
import '../models/discover_get_model.dart';
import '../models/category_model.dart';
import '../models/event.dart';
import '../utilities/utils.dart';

//TODO: GET requests

//TODO: get available categories for discover

Future<List<Category>> getAvailableCategories() async {
  List<Category> datas = [];
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

    for (var category in categories) {
      print(datas);
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

  return [reviews, detail_data, detail_data["liked"]];
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

//TODO: get the list of discoveries i added

Future<List<dynamic>> getMyDiscoveries() async {
  List<dynamic> datas = [];
  var res = await dio.get("/discoveries/me/");
  if (res.statusCode == 200) {
    var discoveries = res.data["datas"];

    for (var discover in discoveries) {
      datas.add(Discover.fromJson(discover));
    }
  } else {
    log("error on requesting discovers");
  }

  return datas;
}

//----------------------------------GET------------------------------

//POST rquests
//TODO: Add review to discover

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

//TODO: Like a discovery object

Future<Map<String, dynamic>> likeDiscovery(int dis) async {
  Map<String, dynamic> body = {};
  var res = await dio.post("/discover/$dis/like/");
  if (res.statusCode == 200) {
    body = res.data;
  } else if (res.statusCode == 401) {
    body = {"status": 401, "detail": res.data["detail"]};
  } else {
    body = {};
  }

  return body;
}

//TODO: Add new discovery

Future<Map<String, dynamic>> addNewDiscover(Discover discover) async {
  Map<String, dynamic> response_data = {};

  try {
    var res = await dio.post("/discover/",
        options: Options(
          contentType: "application/json",
        ),
        data: {
          "title": discover.title,
          "description": discover.description,
          "category": discover.categoryFn.id,
          "logo": discover.logo,
          "origin_location": discover.location.origin,
          "based_location": discover.location.based,
          "source_link": discover.sourceLink,
          "social_media_link": discover.socialMediaLink
        });
    print(res.statusCode);
    if (res.statusCode == 201) {
      response_data = res.data;
      print(res.data);
    }
  } catch (e) {
    Map<String, dynamic> error = decodeException(e);
    response_data = error;
  }

  return response_data;
}

//---------------------------POST------------------------

//TODO: DELETE

Future<Map<String, dynamic>> deleteDiscoverById(int dis) async {
  Map<String, dynamic> body = {};
  var res = await dio.delete("/discover/$dis/delete/");
  if (res.statusCode == 200) {
    body = res.data;
  } else if (res.statusCode == 401) {
    body = {"status": 401, "detail": res.data["detail"]};
  } else {
    body = res.data;
  }
  return body;
}

Future<Map<String, dynamic>> deleteReviewById(int reviewId) async {
  Map<String, dynamic> body = {};
  var res = await dio.delete("/discover/$reviewId/delete-review/");
  if (res.statusCode == 200) {
    body = res.data;
  } else if (res.statusCode == 401) {
    body = {"status": 401, "detail": res.data["detail"]};
  } else {
    body = res.data;
  }
  return body;
}
