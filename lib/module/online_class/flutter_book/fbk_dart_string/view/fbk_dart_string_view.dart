import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartStringView extends StatefulWidget {
  const FbkDartStringView({Key? key}) : super(key: key);

  bool? exercise1() {
    bool isValid = false;
    String productName = "JR SUPER 12";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName mengandung kata2 yang ada pada variabel query!
    //[Tips] Gunakan .contains
    if (productName != productName) {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise2() {
    bool isEmpty = false;
    String productName = "";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName kosong
    //[Tips] Gunakan .isEmpty
    if (productName != productName) {
      isEmpty = true;
    }
    return isEmpty;
  }

  bool? exercise3() {
    bool isValid = false;
    String productName = "GG FILTER 12";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName minimal memilki 2 karakter atau lebih
    //[Tips] Gunakan .length, dan >= 2
    if (productName == "") {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise4() {
    bool isValid = false;
    int number = 23;
    String code = "";
    //Ubah angka 23 menjadi String "0023"
    //Gunakan .toString().padLeft(4,"0")!
    return code == "0023";
  }

  bool? exercise5() {
    bool isValid = false;
    int number = 27;
    String code = "";
    //Ubah angka 27 menjadi String "00027"
    //Gunakan .toString().padRight(5,"0")!
    return code == "00027";
  }

  bool? exercise6() {
    String email = "denyocr.world@gmail.com";
    bool isValid = false;

    //Cek nilai email, apakah email yang valid atau tidak
    //Gunakan Regex di bawah ini:
    //Gunakan fungsi .hasMatch pada Regex!
    /*
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\.[a-zA-Z]+$',
    );
    */
    return isValid;
  }

  bool? exercise7() {
    String firstName = "ANDREA";
    //Index pada statement ini salah
    //Seharusnya index-nya adalah index dari huruf N pada text di atas
    //Perbaiki index-nya!
    bool isValid = firstName[0] == "N";
    return isValid;
  }

  bool? exercise8() {
    String firstName = "ANDREA";
    //Ubah semua text di atas menjadi lowercase semua
    //Gunakan .toLowerCase !
    return firstName == "andrea";
  }

  bool? exercise9() {
    String firstName = "daniel Goleman";
    //Ubah semua text di atas menjadi lowercase semua
    //Gunakan .toUpperCase !
    return firstName == "DANIEL GOLEMAN";
  }

  bool? exercise10() {
    List arr = [];
    String line = "1;GG FILTER 12;250;-";
    //Split string di atas berdasarkan ; dan tampung di dalam arr!
    //Gunakan .split !
    return arr.length == 4;
  }

  bool? exercise11() {
    List arr = [];
    String line = "1,GG FILTER 12,250,-";
    //Split string di atas berdasarkan ; dan tampung di dalam arr!
    //Gunakan .split !
    return arr.length == 4;
  }

  bool? exercise12() {
    Map product = {};
    String str = '{"product_name": "GG FILTER 12","price": 25}';
    //Ubah String di atas menjadi Map di Dart
    //Dan tampung pada variabel product
    //Gunakan jsonDecode!!!
    return product['product_name'] == 'GG FILTER 12';
  }

  bool exercise13() {
    String input = "Hello World";
    // Tuliskan kode untuk mengubah input menjadi huruf besar
    String? output;

    return output == "HELLO WORLD";
  }

  bool exercise14() {
    String input = "Hello World";
    // Tuliskan kode untuk mengubah input menjadi huruf kecil
    String? output;

    return output == "hello world";
  }

  bool exercise15() {
    String input = "Hello World";
    // Tuliskan kode untuk mengubah input menjadi judul case
    String? output;

    return output == "Hello World";
  }

  bool exercise16() {
    String input = "1234";
    // Tuliskan kode untuk mengubah input menjadi angka
    int? output;

    return output == 1234;
  }

  bool exercise17() {
    String input = "1234.56";
    // Tuliskan kode untuk mengubah input menjadi double
    double? output;

    return output == 1234.56;
  }

  bool exercise18() {
    String input = "Rp. 1.234,56";
    // Tuliskan kode untuk mengubah input menjadi double tanpa simbol mata uang
    double? output;

    return output == 1234.56;
  }

  bool exercise19() {
    double input = 1234.56;
    // Tuliskan kode untuk mengubah input menjadi String dengan format currency
    String? output;

    return output == "Rp. 1.234,56";
  }

  bool exercise20() {
    String input = "1234.56";
    // Tuliskan kode untuk mengubah input menjadi String dengan format currency
    String? output;

    return output == "Rp. 1.234,56";
  }

  bool exercise21() {
    String input = "Hello, World!";
    // Tuliskan kode untuk memverifikasi apakah input berisi kata "Hello"
    bool? output;

    return output == true;
  }

  bool exercise22() {
    String input = "Hello, World!";
    // Tuliskan kode untuk mengubah input menjadi "Hello World"
    String? output;

    return output == "Hello World";
  }

  bool exercise23() {
    String input = "Hello, World!";
    // Tuliskan kode untuk mengubah input menjadi "Hello,World!"
    String? output;

    return output == "Hello,World!";
  }

  bool exercise24() {
    String input = "Hello, World!";
    // Tuliskan kode untuk memverifikasi apakah input berisi kata "world"
    bool? output;

    return output == false;
  }

  bool exercise25() {
    String input = "Hello, World!";
    // Tuliskan kode untuk memverifikasi apakah input berisi kata "World"
    bool? output;

    return output == true;
  }

  bool exercise26() {
    String input = "Rp. 10.000";
    // Tuliskan kode untuk mengubah input menjadi 10000
    int? output;

    return output == 10000;
  }

  bool exercise27() {
    String input = "Rp. 10.000";
    // Tuliskan kode untuk mengubah input menjadi 10.000
    double? output;

    return output == 10.000;
  }

  bool exercise28() {
    String input = "Rp. 10.000";
    // Tuliskan kode untuk mengubah input menjadi 10,000.00
    String? output;

    return output == "10,000.00";
  }

  bool exercise29() {
    String input = "Hello, World!";
    // Tuliskan kode untuk memverifikasi apakah input berisi huruf besar
    bool? output;

    return output == true;
  }

  bool exercise30() {
    String input = "Hello, World!";
    // Tuliskan kode untuk memverifikasi apakah input berisi huruf kecil
    bool? output;

    return output == false;
  }

  bool exercise31() {
    String input = "12,345.67";
    // Tuliskan kode untuk mengkonversi input menjadi double
    double? output;

    return output == 12345.67;
  }

  bool exercise32() {
    String input = "Rp. 12.345,67";
    // Tuliskan kode untuk mengkonversi input menjadi double
    double? output;

    return output == 12345.67;
  }

  bool exercise33() {
    String input = "USD 12,345.67";
    // Tuliskan kode untuk mengkonversi input menjadi double
    double? output;

    return output == 12345.67;
  }

  bool exercise34() {
    String input = "€12.345,67";
    // Tuliskan kode untuk mengkonversi input menjadi double
    double? output;

    return output == 12345.67;
  }

  bool exercise35() {
    String input = "¥12,345.67";
    // Tuliskan kode untuk mengkonversi input menjadi double
    double? output;

    return output == 12345.67;
  }

  Widget build(context, FbkDartStringController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartString"),
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
  State<FbkDartStringView> createState() => FbkDartStringController();
}
