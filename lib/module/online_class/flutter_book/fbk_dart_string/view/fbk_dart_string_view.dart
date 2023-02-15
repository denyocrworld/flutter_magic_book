import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartStringView extends StatefulWidget {
  const FbkDartStringView({Key? key}) : super(key: key);

  bool? exercise1() {
    bool isValid = false;
    String productName = "JR SUPER 12";
    String query = "JR";

    if (productName != productName) {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise2() {
    bool isEmpty = false;
    String productName = "";
    String query = "JR";

    if (productName != productName) {
      isEmpty = true;
    }
    return isEmpty;
  }

  bool? exercise3() {
    bool isValid = false;
    String productName = "GG FILTER 12";
    String query = "JR";

    if (productName == "") {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise4() {
    bool isValid = false;
    int number = 23;
    String code = "";

    return code == "0023";
  }

  bool? exercise5() {
    bool isValid = false;
    int number = 27;
    String code = "";

    return code == "00027";
  }

  bool? exercise6() {
    String email = "denyocr.world@gmail.com";
    bool isValid = false;

    return isValid;
  }

  bool? exercise7() {
    String firstName = "ANDREA";

    bool isValid = firstName[0] == "N";
    return isValid;
  }

  bool? exercise8() {
    String firstName = "ANDREA";

    return firstName == "andrea";
  }

  bool? exercise9() {
    String firstName = "daniel Goleman";

    return firstName == "DANIEL GOLEMAN";
  }

  bool? exercise10() {
    List arr = [];
    String line = "1;GG FILTER 12;250;-";

    return arr.length == 4;
  }

  bool? exercise11() {
    List arr = [];
    String line = "1,GG FILTER 12,250,-";

    return arr.length == 4;
  }

  bool? exercise12() {
    Map product = {};
    String str = '{"product_name": "GG FILTER 12","price": 25}';

    return product['product_name'] == 'GG FILTER 12';
  }

  bool exercise13() {
    String input = "Hello World";

    String? output;

    return output == "HELLO WORLD";
  }

  bool exercise14() {
    String input = "Hello World";

    String? output;

    return output == "hello world";
  }

  bool exercise15() {
    String input = "Hello World";

    String? output;

    return output == "Hello World";
  }

  bool exercise16() {
    String input = "1234";

    int? output;

    return output == 1234;
  }

  bool exercise17() {
    String input = "1234.56";

    double? output;

    return output == 1234.56;
  }

  bool exercise18() {
    String input = "Rp. 1.234,56";

    double? output;

    return output == 1234.56;
  }

  bool exercise19() {
    double input = 1234.56;

    String? output;

    return output == "Rp. 1.234,56";
  }

  bool exercise20() {
    String input = "1234.56";

    String? output;

    return output == "Rp. 1.234,56";
  }

  bool exercise21() {
    String input = "Hello, World!";

    bool? output;

    return output == true;
  }

  bool exercise22() {
    String input = "Hello, World!";

    String? output;

    return output == "Hello World";
  }

  bool exercise23() {
    String input = "Hello, World!";

    String? output;

    return output == "Hello,World!";
  }

  bool exercise24() {
    String input = "Hello, World!";

    bool? output;

    return output == false;
  }

  bool exercise25() {
    String input = "Hello, World!";

    bool? output;

    return output == true;
  }

  bool exercise26() {
    String input = "Rp. 10.000";

    int? output;

    return output == 10000;
  }

  bool exercise27() {
    String input = "Rp. 10.000";

    double? output;

    return output == 10.000;
  }

  bool exercise28() {
    String input = "Rp. 10.000";

    String? output;

    return output == "10,000.00";
  }

  bool exercise29() {
    String input = "Hello, World!";

    bool? output;

    return output == true;
  }

  bool exercise30() {
    String input = "Hello, World!";

    bool? output;

    return output == false;
  }

  bool exercise31() {
    String input = "12,345.67";

    double? output;

    return output == 12345.67;
  }

  bool exercise32() {
    String input = "Rp. 12.345,67";

    double? output;

    return output == 12345.67;
  }

  bool exercise33() {
    String input = "USD 12,345.67";

    double? output;

    return output == 12345.67;
  }

  bool exercise34() {
    String input = "€12.345,67";

    double? output;

    return output == 12345.67;
  }

  bool exercise35() {
    String input = "¥12,345.67";

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
