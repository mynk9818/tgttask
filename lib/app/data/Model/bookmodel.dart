// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

List<BookModel> bookModelFromJson(String str) =>
    List<BookModel>.from(json.decode(str).map((x) => BookModel.fromJson(x)));

String bookModelToJson(List<BookModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookModel {
  final int? id;
  final String? title;
  final String? author;
  final String? category;
  final String? categoryId;
  final int? pageCount;
  final String? summary;
  final int? publishYear;
  final String? isbn;

  BookModel({
    this.id,
    this.title,
    this.author,
    this.category,
    this.categoryId,
    this.pageCount,
    this.summary,
    this.publishYear,
    this.isbn,
  });

  BookModel copyWith({
    int? id,
    String? title,
    String? author,
    String? category,
    String? categoryId,
    int? pageCount,
    String? summary,
    int? publishYear,
    String? isbn,
  }) =>
      BookModel(
        id: id ?? this.id,
        title: title ?? this.title,
        author: author ?? this.author,
        category: category ?? this.category,
        categoryId: categoryId ?? this.categoryId,
        pageCount: pageCount ?? this.pageCount,
        summary: summary ?? this.summary,
        publishYear: publishYear ?? this.publishYear,
        isbn: isbn ?? this.isbn,
      );

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json["id"],
        title: json["title"],
        author: json["author"],
        category: json["category"],
        categoryId: json["categoryId"],
        pageCount: json["pageCount"],
        summary: json["summary"],
        publishYear: json["publishYear"],
        isbn: json["isbn"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "category": category,
        "categoryId": categoryId,
        "pageCount": pageCount,
        "summary": summary,
        "publishYear": publishYear,
        "isbn": isbn,
      };
}
