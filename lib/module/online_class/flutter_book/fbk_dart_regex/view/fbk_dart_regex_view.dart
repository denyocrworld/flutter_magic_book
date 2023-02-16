import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartRegexView extends StatefulWidget {
  const FbkDartRegexView({Key? key}) : super(key: key);

  bool exercise1() {
    String text = "Hello World";
    RegExp exp = RegExp(r"Hello");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "Hello"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise2() {
    String text = "Dart Programming";
    RegExp exp = RegExp(r"\bDart\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\bDart\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise3() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\bdart\b", caseSensitive: false);
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\bdart\b" dengan case sensitive false
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise4() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\b[a-z]+\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\b[a-z]+\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise5() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\b\w+\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\b\w+\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise6() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\b\w{3,}\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\b\w{3,}\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise7() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\b[a-z]{3,}\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\b[a-z]{3,}\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise8() {
    String text = "dart programming";
    RegExp exp = RegExp(r"\b\w*\b");
    // Tuliskan kode untuk menentukan apakah text memenuhi RegExp "\b\w*\b"
    bool isMatch = false;

    return isMatch == true;
  }

  bool exercise9() {
    var pattern = r'\d{3}-\d{2}-\d{4}';
    var string = '123-45-6789';
    // Tuliskan kode untuk memastikan apakah string sesuai dengan pattern
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise10() {
    var pattern = r'\b\w{5}\b';
    var string = 'Hello World';
    // Tuliskan kode untuk memastikan apakah string memiliki kata dengan 5 huruf
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise11() {
    var pattern = r'^[A-Z]{1}\w+$';
    var string = 'Hello World';
    // Tuliskan kode untuk memastikan apakah string dimulai dan diakhiri dengan huruf besar
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise12() {
    var pattern = r'\b\d{3}[-.]\d{3}[-.]\d{4}\b';
    var string = '123-456-7890';
    // Tuliskan kode untuk memastikan apakah string memiliki format telepon
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise13() {
    var pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b';
    var string = 'email@example.com';
    // Tuliskan kode untuk memastikan apakah string memiliki format email
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise14() {
    var pattern =
        r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$';
    var string = 'https://www.example.com';
    // Tuliskan kode untuk memastikan apakah string memiliki format URL
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise15() {
    var pattern = r'\b[A-Z][a-z]{2,}\b';
    var string = 'Hello World';
    // Tuliskan kode untuk memastikan apakah string memiliki kata dengan awalan huruf besar
    var isMatch = false;

    return isMatch == true;
  }

  bool exercise16() {
    String input = "Hello World! 123";
    // Tuliskan kode untuk menghapus semua angka dari input
    String? output;

    return output == "Hello World! ";
  }

  bool exercise17() {
    String input = "Hello World! 123";
    // Tuliskan kode untuk menghapus semua huruf dari input
    String? output;

    return output == " 123";
  }

  bool exercise18() {
    String input = "Hello World! 123";
    // Tuliskan kode untuk menghapus semua simbol dari input
    String? output;

    return output == "Hello World 123";
  }

  bool exercise19() {
    String input = "+62 812-3456-7890";
    // Tuliskan kode untuk menghapus semua simbol dan spasi dari input
    String? output;

    return output == "6281234567890";
  }

  bool exercise20() {
    String input = "Hello World! 123";
    // Tuliskan kode untuk menghapus semua angka dan simbol dari input
    String? output;

    return output == "Hello World ";
  }

  bool exercise21() {
    String input = "<tag1>value1</tag1><tag2>value2</tag2>";
    // Tuliskan kode untuk mengambil nilai di antara tag1
    String? output;

    return output == "value1";
  }

  bool exercise22() {
    String input = "[value1][value2]";
    // Tuliskan kode untuk mengambil nilai di antara [] pertama
    String? output;

    return output == "value1";
  }

  bool exercise23() {
    String input = "key1=value1;key2=value2;";
    // Tuliskan kode untuk mengambil nilai setelah tanda sama dengan pada key1
    String? output;

    return output == "value1";
  }

  bool exercise24() {
    String input = "https://www.example.com/path1/path2";
    // Tuliskan kode untuk mengambil nilai setelah tiga slash (///)
    String? output;

    return output == "www.example.com/path1/path2";
  }

  bool exercise25() {
    String input = "Hello, [John Doe]. Today is [Monday, February 14th 2022].";
    // Tuliskan kode untuk mengambil nilai di antara kurung [ ] pertama
    String? output;

    return output == "John Doe";
  }

  bool exercise26() {
    String input = "Katie;Hopkins;31;Female;Journalist";
    // Tuliskan kode untuk memisahkan data di input menjadi list dengan delimiter ;
    List<String>? output;

    return output != null &&
        output.length == 5 &&
        output[0] == "Katie" &&
        output[1] == "Hopkins" &&
        output[2] == "31" &&
        output[3] == "Female" &&
        output[4] == "Journalist";
  }

  bool exercise27() {
    String input = "John,Doe,30,Male,Developer";
    // Tuliskan kode untuk memisahkan data di input menjadi list dengan delimiter ,
    List<String>? output;

    return output != null &&
        output.length == 5 &&
        output[0] == "John" &&
        output[1] == "Doe" &&
        output[2] == "30" &&
        output[3] == "Male" &&
        output[4] == "Developer";
  }

  bool exercise28() {
    String input = "Jane|Doe|29|Female|Designer";
    // Tuliskan kode untuk memisahkan data di input menjadi list dengan delimiter |
    List<String>? output;

    return output != null &&
        output.length == 5 &&
        output[0] == "Jane" &&
        output[1] == "Doe" &&
        output[2] == "29" &&
        output[3] == "Female" &&
        output[4] == "Designer";
  }

  bool exercise29() {
    String input = "Michael;Smith;32;Male;Engineer";
    // Tuliskan kode untuk memisahkan data di input menjadi list dengan delimiter ;
    List<String>? output;

    return output != null &&
        output.length == 5 &&
        output[0] == "Michael" &&
        output[1] == "Smith" &&
        output[2] == "32" &&
        output[3] == "Male" &&
        output[4] == "Engineer";
  }

  bool exercise30() {
    String input = "Emily,Brown,28,Female,Teacher";
    // Tuliskan kode untuk memisahkan data di input menjadi list dengan delimiter ,
    List<String>? output;

    return output != null &&
        output.length == 5 &&
        output[0] == "Emily" &&
        output[1] == "Brown" &&
        output[2] == "28" &&
        output[3] == "Female" &&
        output[4] == "Teacher";
  }

  bool exercise31() {
    String input = "Hello World! 123";
// Tuliskan kode untuk menghapus semua angka dan simbol dari input
    String? output;

    return output == "Hello World";
  }

  bool exercise32() {
    String input = "Hello World! 123";
// Tuliskan kode untuk menghapus semua huruf dan spasi dari input
    String? output;

    return output == "123";
  }

  bool exercise33() {
    String input = "My email address is example@email.com";
// Tuliskan kode untuk mengambil alamat email dari input
    String? output;

    return output == "example@email.com";
  }

  bool exercise34() {
    String input = "My phone number is +62 812-3456-7890";
// Tuliskan kode untuk mengambil nomor telepon dari input
    String? output;

    return output == "+62 812-3456-7890";
  }

  bool exercise35() {
    String input = "Name: John Doe, Age: 30, Gender: Male";
// Tuliskan kode untuk memisahkan data dalam input menjadi sebuah map
    Map<String, String>? output;

    return output != null &&
        output.length == 3 &&
        output["Name"] == "John Doe" &&
        output["Age"] == "30" &&
        output["Gender"] == "Male";
  }

  Widget build(context, FbkDartRegexController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartRegex"),
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
  State<FbkDartRegexView> createState() => FbkDartRegexController();
}
