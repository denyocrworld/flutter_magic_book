// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartSymbolView extends StatefulWidget {
  const FbkDartSymbolView({Key? key}) : super(key: key);

  bool? exercise1() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang ;
    //Tambahkan titik koma pada bagian kode yang error
    List products = [];
    /*
    products = [
      "GG FILTER 12",
      "JR SUPER 12",
      "GULA LAKU",
    ];
    for (var product in products) {
      print(product)
    }
    */
    return products.isNotEmpty;
  }

  bool? exercise2() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang ,
    //Tambahkan , pada bagian kode yang error
    List products = [];
    /*
    products = [
      "GG FILTER 12"
      "JR SUPER 12"
      "GULA LAKU",
    ];
    for (var product in products) {
      print(product);
    }
    */
    return products.isNotEmpty;
  }

  bool? exercise3() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang }
    //Tambahkan } pada bagian kode yang error
    int qty = 2;
    double price = 25;
    double total = qty * price;
    double discount = 0;

    /*
    if (total >= 50) {
      discount = 0.25;
    else {
      discount = 0.10;
    }
    */

    return discount == 0.25;
  }

  bool? exercise4() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang } dan ;
    //Tambahkan } dan ; pada bagian kode yang error
    int qty = 4;
    double price = 25;
    double total = qty * price;
    double discount = 0;

    /*
    if (total >= 100) {
      discount = 0.35;
     else if (total >= 50) {
      discount = 0.25
    } else {
      discount = 0.10;
    */

    return discount == 0.35;
  }

  bool? exercise5() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena menggunakan {} pada List
    //Seharusnya menggunakan [];
    //Perbaiki bagian yang error

    List productCategories = [];

    /*
    productCategories = {
      "GG FILTER",
      "JR SUPER 12",
      "SUSU DANCOW",
    };
    */
    return productCategories.isNotEmpty;
  }

  bool? exercise6() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena terlalu banyak menggunakan ,
    //Perbaiki bagian yang error

    List productCategories = [];

    /*
    productCategories = [
      "GG FILTER",,
      "JR SUPER 12",
      "SUSU DANCOW",
    ],;,
    */

    return productCategories.isNotEmpty;
  }

  bool? exercise7() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List productCategories = [];
    /*
    if (productCategories.isEmpty {
      productCategories.add("TEH GELAS OT")
    */
    return productCategories.isNotEmpty;
  }

  bool? exercise8() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List customers = [];
    /*
    Map product = [
      "id": 1,
      "product_name": "TEH GELAS OT",
      "price": 25,,
    ];
    customers.add(product);
    */

    return customers.isNotEmpty;
  }

  bool? exercise9() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List arr = [];
    /*
    for (var i = 0; i < 10; i++) {
      String str = "";
      for (var n = 0; n <= i; n++) {
        str += "*",
      
      print(str),
      arr.add(str);
    }
    */
    return arr.isNotEmpty;
  }

  bool? exercise10() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List arr = [];
    /*
    for var i = 0; i < 10; i++) {
      String str = "";
      for (var n = 0;; n <= i; n++) {
        if (n % 2 == 0 {
          str += "~";
        } else {
          str += "*";
        }
      
      print(str);
      arr.add(str);
    }
    */
    return arr.isNotEmpty;
  }

  bool? exercise11() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  var names = ["John" "Jane" "Jim"]
  for (String name in names)
    print("Hello, " + name)
  */
    // return names.length == 3;
  }

  bool? exercise12() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung
    /*
  int x = 10
  int y = 20
  int result = x * y
  print("Hasil: " + result.toString())
  // return result == 200;
  */
  }

  bool? exercise13() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int x = 10
  int y = 20
  if x > y
    print("x lebih besar dari y")
  else
    print("x lebih kecil dari y")
  */
    // return x > y;
  }

  bool? exercise14() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart
    /*
  List numbers = [1, 2, 3, 4, 5]
  for (int number in numbers)
    print(number)
  */
    // return numbers.length == 5;
  }

  bool? exercise15() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan koma
    /*
  Map user = {"name": "John" "age": 20}
  print("Nama: " + user["name"] + ", Umur: " + user["age"].toString())
  */
    // return user.length == 2;
  }

  bool? exercise16() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  int x = 10
  int y = 20
  int result = x + y
  print("Hasil: $result")
  */
    // return result == 30;
  }

  bool? exercise17() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  List numbers = [1, 2, 3, 4, 5]
  for (int number in numbers)
    print(number * 2)
  */
    // return numbers.length == 5;
  }

  bool? exercise18() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung
    /*
  int x = 10
  int y = 20
  int result = x * y
  print("Hasil: $result")
  */
    // return result == 200;
  }

  bool? exercise19() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart
    /*
  List products = "GG Filter 12", "JR Super 12", "Gula Laku"
  for (String product in products)
    print(product)
  */
    // return products.length == 3;
  }

  bool? exercise20() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int score = 80
  if score >= 60
    print("Lulus")
  else
    print("Tidak Lulus")
  */
    // return score >= 60;
  }

  bool? exercise21() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  Map user = {"name": "John", "age": 20}
  print("Nama: ${user["name"]}, Umur: ${user["age"]}")
  */
    // return user.length == 2;
  }

  bool? exercise22() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart
    /*
  List numbers = [1, 2, 3, 4, 5]
  for (int number in numbers)
    if (number % 2 == 0)
      print("Bilangan genap: $number")
    else
      print("Bilangan ganjil: $number")
  */
    // return numbers.length == 5;
  }

  bool? exercise23() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int x = 10
  int y = 20
  if x > y
    print("x lebih besar dari y")
  else
    print("x lebih kecil dari y")
  */
    // return x > y;
  }

  bool? exercise24() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  List products = ["GG Filter 12", "JR Super 12", "Gula Laku"]
  for (String product in products)
    print(product)
  */
    // return products.length == 3;
  }

  bool? exercise25() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart
    /*
  Map user = {"name": "John", "age": 20}
  print("Nama: ${user["name"]}, Umur: ${user["age"]}")
  */
    // return user.length == 2;
  }

  bool? exercise26() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int score = 80
  if score >= 60
    print("Lulus")
  else
    print("Tidak Lulus")
  */
    // return score >= 60;
  }

  bool? exercise27() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  List numbers = [1, 2, 3, 4, 5]
  for (int number in numbers)
    print(number * 2)
  */
    // return numbers.length == 5;
  }

  bool? exercise28() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung
    /*
  int x = 10
  int y = 20
  int result = x * y
  print("Hasil: $result")
  */
    // return result == 200;
  }

  bool? exercise29() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart
    /*
  Map user = {"name": "John", "age": 20}
  print("Nama: ${user["name"]}, Umur: ${user["age"]}")

 return user.length == 2;
 */
  }

  bool? exercise30() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int score = 80
  if score >= 60
    print("Lulus")
  else
    print("Tidak Lulus")
  */
    // return score >= 60;
  }

  bool? exercise31() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  List products = ["GG Filter 12", "JR Super 12", "Gula Laku"]
  for (String product in products)
    print(product)
  */
    // return products.length == 3;
  }

  bool? exercise32() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan symbol dart

    /*
    Map user = {"name": "John", "age": 20}
    print("Nama: ${user["name"]}, Umur: ${user["age"]}")

    return user.length == 2;
    */
  }

  bool? exercise33() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung kurawal
    /*
  int score = 80
  if score >= 60
    print("Lulus")
  else
    print("Tidak Lulus")
  */
    // return score >= 60;
  }

  bool? exercise34() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan titik koma
    /*
  List numbers = [1, 2, 3, 4, 5]
  for (int number in numbers)
    print(number * 2)
  */
    // return numbers.length == 5;
  }

  bool? exercise35() {
    //Uncomment kode di bawah ini dan perbaikilah!
    //Error-nya disebabkan karena lupa memberikan kurung

    // int x = 10
    // int y = 20
    // int result = x + y
    // print("Hasil: $result")
    // return result == 30
  }

  Widget build(context, FbkDartSymbolController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartSymbol"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
              rowLabel(exercise2),
              rowLabel(exercise3),
              rowLabel(exercise4),
              rowLabel(exercise5),
              rowLabel(exercise6),
              rowLabel(exercise7),
              rowLabel(exercise8),
              rowLabel(exercise9),
              rowLabel(exercise10),
              rowLabel(exercise11),
              rowLabel(exercise12),
              rowLabel(exercise13),
              rowLabel(exercise14),
              rowLabel(exercise15),
              rowLabel(exercise16),
              rowLabel(exercise17),
              rowLabel(exercise18),
              rowLabel(exercise19),
              rowLabel(exercise20),
              rowLabel(exercise21),
              rowLabel(exercise22),
              rowLabel(exercise23),
              rowLabel(exercise24),
              rowLabel(exercise25),
              rowLabel(exercise26),
              rowLabel(exercise27),
              rowLabel(exercise28),
              rowLabel(exercise29),
              rowLabel(exercise30),
              rowLabel(exercise31),
              rowLabel(exercise32),
              rowLabel(exercise33),
              rowLabel(exercise34),
              rowLabel(exercise35),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartSymbolView> createState() => FbkDartSymbolController();
}
