// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);


import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
    final int id;
    final String name;
    final String description;

    Category({
        required this.id,
        required this.name,
        required this.description,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"] ?? "",
        description: json["description"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
    };
}
