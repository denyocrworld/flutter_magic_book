/*
"product_name": "Awesome Rubber Mouse",
"price": 946.72,
"description": "The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J",
"id": 3
*/

// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

class Product {
  Product({
    required this.productName,
    required this.price,
    required this.description,
    required this.id,
  });

  String productName;
  double price;
  String description;
  int id;

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productName: json["product_name"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "price": price,
        "description": description,
        "id": id,
      };
}
