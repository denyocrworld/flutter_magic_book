import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartNumberView extends StatefulWidget {
  const FbkDartNumberView({Key? key}) : super(key: key);

  bool? exercise1() {
    int? number;

    return number == 0;
  }

  bool? exercise2() {
    int? number;

    return number == 23;
  }

  bool? exercise3() {
    double? number;

    return number == 29.23;
  }

  bool? exercise4() {
    double? number;

    return number == 0;
  }

  bool? exercise5() {
    int total = 0;
    int qty = 2;
    int price = 100;

    return total != 0;
  }

  double getTotal(double price, double qty) {
    return price * qty;
  }

  bool? exercise6() {
    int total = 0;

    return total != 0;
  }

  bool? exercise7() {
    double price = 2500.2521;

    return price.toString() == "2500.25";
  }

  bool? exercise8() {
    int id = 1001;

    return id.toString() == "00001001";
  }

  bool? exercise9() {
    int input = 25000;

    String formattedInput = "";
    return formattedInput == "Rp25.000";
  }

  bool? exercise10() {
    int input = 2250;

    String formattedInput = "";
    return formattedInput == "\$2.250";
  }

  bool? exercise11() {
    double number = 23.89;

    return number == 24;
  }

  bool? exercise12() {
    double number = 23.39;

    return number == 23;
  }

  bool exercise13() {
    int input = 12345;

    bool? output;

    return output == false;
  }

  bool exercise14() {
    double input = 12345.6789;

    double? output;

    return output == 12345.68;
  }

  bool exercise15() {
    int input = 123456;

    bool? output;

    return output == false;
  }

  bool exercise16() {
    int input = 123456;

    bool? output;

    return output == true;
  }

  bool exercise17() {
    int a = 10;
    int b = 20;

    int? c;
    int? d;

    return c == 20 && d == 10;
  }

  bool exercise18() {
    int input = 12345;

    bool? output;

    return output == false;
  }

  bool exercise19() {
    double input = 12345.6789;

    double? output;

    return output == 12345.7;
  }

  bool exercise20() {
    int input = 123456;

    bool? output;

    return output == true;
  }

  bool exercise21() {
    String input = "12345";

    int? output;

    return output == 12345;
  }

  bool exercise22() {
    String input = "12.345";

    double? output;

    return output == 12.345;
  }

  bool exercise23() {
    int input = 12345;

    String? output;

    return output == "12345";
  }

  bool exercise24() {
    double input = 12345.678;

    String? output;

    return output == "12345.678";
  }

  bool exercise25() {
    String input = "12345";

    bool? output;

    return output == true;
  }

  bool exercise26() {
    String input = "12345.678";

    bool? output;

    return output == true;
  }

  bool exercise27() {
    String input = "abcde";

    bool? output;

    return output == false;
  }

  bool exercise28() {
    String input = "abcde";

    bool? output;

    return output == false;
  }

  bool exercise29() {
    int input = 12345;

    bool? output;

    return output == false;
  }

  bool exercise30() {
    int input = -12345;

    bool? output;

    return output == true;
  }

  bool exercise31() {
    int input = 12345;

    bool? output;

    return output == true;
  }

  bool exercise32() {
    int input = -12345;

    bool? output;

    return output == false;
  }

  bool exercise33() {
    String input = "1,000.50";

    double? output;

    return output == 1000.5;
  }

  bool exercise34() {
    String input = "100,000";

    int? output;

    return output == 100000;
  }

  bool exercise35() {
    String input = "100.5";

    bool? output;

    return output == true;
  }

  Widget build(context, FbkDartNumberController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartNumber"),
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
  State<FbkDartNumberView> createState() => FbkDartNumberController();
}
