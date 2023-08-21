// To parse this JSON data, do
//
//     final discover = discoverFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Discover discoverFromJson(String str) => Discover.fromJson(json.decode(str));

String discoverToJson(Discover data) => json.encode(data.toJson());

class Discover {
  final int id;
  final String title;
  final String description;
  final CategoryFn categoryFn;
  final Location location;
  final int likes;
  final String sourceLink;
  final String socialMediaLink;
  final String likeUrl;
  final String posterId;
  final bool iseditorchoice;
  final bool isowner;
  final String logo;

  Discover({
    required this.id,
    required this.title,
    required this.description,
    required this.categoryFn,
    required this.location,
    required this.likes,
    required this.sourceLink,
    required this.socialMediaLink,
    required this.likeUrl,
    required this.posterId,
    required this.iseditorchoice,
    required this.isowner,
    required this.logo,
  });

  factory Discover.fromJson(Map<String, dynamic> json) => Discover(
        id: json["id"],
        title: json["title"] ?? "",
        description: json["description"] ?? "",
        categoryFn: CategoryFn.fromJson(json["category_fn"]),
        location: Location.fromJson(json["location"]),
        likes: json["likes"],
        sourceLink: json["source_link"] ?? "",
        socialMediaLink: json["social_media_link"] ?? "",
        likeUrl: json["like_url"] ?? "",
        posterId: json["poster_id"] ?? "",
        iseditorchoice: json["iseditorchoice"] ?? false,
        isowner: json["isowner"] ?? false,
        logo: json["logo"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "category_fn": categoryFn.toJson(),
        "location": location.toJson(),
        "likes": likes,
        "source_link": sourceLink,
        "social_media_link": socialMediaLink,
        "like_url": likeUrl,
        "poster_id": posterId,
        "iseditorchoice": iseditorchoice,
        "isowner": isowner,
        "logo": logo,
      };
}

class CategoryFn {
  final int id;
  final String title;
  final String description;

  CategoryFn({
    required this.id,
    required this.title,
    required this.description,
  });

  factory CategoryFn.fromJson(Map<String, dynamic> json) => CategoryFn(
        id: json["id"],
        title: json["title"] ?? "",
        description: json["description"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
      };
}

class Location {
  final String origin;
  final String based;

  Location({
    required this.origin,
    required this.based,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        origin: json["origin"] ?? "",
        based: json["based"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "origin": origin,
        "based": based,
      };
}
