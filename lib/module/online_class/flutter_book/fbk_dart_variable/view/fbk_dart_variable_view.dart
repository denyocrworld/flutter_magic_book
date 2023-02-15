import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartVariableView extends StatefulWidget {
  const FbkDartVariableView({Key? key}) : super(key: key);

  bool? exercise1() {
    int price = 100;
    return price is String;
  }

  bool? exercise2() {
    double? price;
    String text = "100.24";

    return price == 100.24;
  }

  bool? exercise3() {
    double? price;

    return price == 300.24;
  }

  bool exercise4() {
    int input = 12;

    bool? output;

    return output == true;
  }

  bool? exercise5() {
    double? total;

    return total != null;
  }

  bool? exercise6() {
    int? age;

    return age != null;
  }

  bool? exercise7() {
    String? name;

    return name != null;
  }

  bool? exercise8() {
    String text = "hello 'Deny', apa kabar?";
    String? name;

    return name == "Deny";
  }

  bool? exercise9() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];
    double average = 0;
    double total = 0;

    return average.toStringAsFixed(2) == "57.43";
  }

  bool? exercise10() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];

    int minValue = 0;
    int maxValue = 0;

    return minValue == 23 && maxValue == 109;
  }

  bool exercise11() {
    int input = 10;

    int? output;

    return output == 15;
  }

  bool exercise12() {
    int input = 10;

    int? output;

    return output == 5;
  }

  bool exercise13() {
    int input1 = 10;
    int input2 = 20;

    int? output;

    return output == 30;
  }

  bool exercise14() {
    int input1 = 10;
    int input2 = 20;

    int? output;

    return output == 10;
  }

  bool exercise15() {
    int input1 = 10;
    int input2 = 20;

    double? output;

    return output == 2.0;
  }

  bool exercise16() {
    int input1 = 10;
    int input2 = 20;

    int? output;

    return output == 200;
  }

  bool exercise17() {
    int input1 = 10;
    int input2 = 20;

    int? output;

    return output == 0;
  }

  bool exercise18() {
    String input = "Hello";

    String? output;

    return output == "Hello World!";
  }

  bool exercise19() {
    String input = "Hello World!";

    String? output;

    return output == "Hello";
  }

  bool exercise20() {
    String input = "Hello World!";

    String? output;

    return output == "World!";
  }

  bool exercise21() {
    int input = 12345;

    bool? output;

    return output == false;
  }

  bool exercise22() {
    int input = 12345;

    bool? output;

    return output == true;
  }

  bool exercise23() {
    String input = "Dart";

    bool? output;

    return output == true;
  }

  bool exercise24() {
    String input = "Dart";

    bool? output;

    return output == false;
  }

  bool exercise25() {
    String input = "Dart";

    bool? output;

    return output == true;
  }

  bool exercise26() {
    String input = "Dart";

    bool? output;

    return output == true;
  }

  bool exercise27() {
    int input = 12345;

    bool? output;

    return output == true;
  }

  bool exercise28() {
    int input = 12345;

    bool? output;

    return output == false;
  }

  bool exercise29() {
    double input = 123.45;

    bool? output;

    return output == true;
  }

  bool exercise30() {
    double input = 123.45;

    bool? output;

    return output == false;
  }

  bool exercise31() {
    String input = "Hello World";

    bool? output;

    return output == false;
  }

  bool exercise32() {
    String input = "Dart is Awesome";

    String? output;

    return output == "dart_is_awesome";
  }

  bool exercise33() {
    String input = "1234";

    bool? output;

    return output == true;
  }

  bool exercise34() {
    String input =
        "Dart is a client-optimized programming language for fast apps on multiple platforms.";

    String? output;

    return output == "Dart is a client-optimized programming language...";
  }

  bool exercise35() {
    String input =
        "Dart is a client-optimized programming language for fast apps on multiple platforms.";

    bool? output;

    return output == true;
  }

  Widget build(context, FbkDartVariableController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartVariable"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
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
  State<FbkDartVariableView> createState() => FbkDartVariableController();
}
