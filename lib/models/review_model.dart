// To parse this JSON data, do
//
//     final review = reviewFromJson(jsonString);

import 'dart:convert';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

class Review {
    final int id;
    final int discoverItem;
    final String reviewDescription;
    final DateTime createdTime;
    final String reviewer;

    Review({
        required this.id,
        required this.discoverItem,
        required this.reviewDescription,
        required this.createdTime,
        required this.reviewer,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        discoverItem: json["discover_item"],
        reviewDescription: json["review_description"],
        createdTime: DateTime.parse(json["created_time"]),
        reviewer: json["reviewer"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "discover_item": discoverItem,
        "review_description": reviewDescription,
        "created_time": createdTime.toIso8601String(),
        "reviewer": reviewer,
    };
}
