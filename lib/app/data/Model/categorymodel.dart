// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
    final String? id;
    final String? category;

    CategoryModel({
        this.id,
        this.category,
    });

    CategoryModel copyWith({
        String? id,
        String? category,
    }) => 
        CategoryModel(
            id: id ?? this.id,
            category: category ?? this.category,
        );

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
    };
}
