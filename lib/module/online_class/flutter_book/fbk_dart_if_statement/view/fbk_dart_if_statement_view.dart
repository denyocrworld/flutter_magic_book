import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartIfStatementView extends StatefulWidget {
  const FbkDartIfStatementView({Key? key}) : super(key: key);

  bool exercise1() {
    int number = 5;

    String? result;

    return result == "Ganjil";
  }

  bool exercise2() {
    int num = 10;

    String? result;

    return result == "Positif";
  }

  bool exercise3() {
    int num1 = 5;
    int num2 = 10;

    String? result;

    return result == "Lebih kecil";
  }

  bool exercise4() {
    int score = 80;

    String? result;

    return result == "Baik";
  }

  bool exercise5() {
    int score = 60;

    String? result;

    return result == "Sedang";
  }

  bool exercise6() {
    int score = 40;

    String? result;

    return result == "Buruk";
  }

  bool exercise7() {
    int number = 10;

    String? result;

    return result == "Bilangan Bulat";
  }

  bool exercise8() {
    int number = 10;

    String? result;

    return result == "Bilangan Positif";
  }

  bool exercise9() {
    int number1 = 10;
    int number2 = 5;

    bool? result;

    return result == true;
  }

  bool exercise10() {
    int number1 = 10;
    int number2 = 5;

    bool? result;

    return result == false;
  }

  bool exercise11() {
    DateTime now = DateTime.now();

    bool? isSunday;
    return isSunday == true;
  }

  bool exercise12() {
    DateTime birthday = DateTime(1995, 8, 17);

    int? age;
    return age == 27;
  }

  bool exercise13() {
    var date = DateTime(2022, 1, 1);

    bool isJanuaryFirst = false;

    return isJanuaryFirst == true;
  }

  bool exercise14() {
    var date = DateTime(2022, 1, 1);

    bool isSunday = false;

    return isSunday == true;
  }

  bool exercise15() {
    var date = DateTime(2022, 1, 1);

    bool? isSaturday;

    return isSaturday == false;
  }

  bool exercise16() {
    var date = DateTime(2022, 1, 1);

    bool? isFriday;

    return isFriday == false;
  }

  bool exercise17() {
    var date = DateTime(2022, 1, 1);

    bool? isThursday;

    return isThursday == false;
  }

  bool exercise18() {
    var date = DateTime(2022, 1, 1);

    bool? isWednesday;
    return isWednesday == false;
  }

  bool exercise19() {
    var date = DateTime(2022, 1, 1);

    bool? isTuesday;
    return isTuesday == false;
  }

  bool exercise20() {
    var date = DateTime(2022, 1, 1);

    bool isMonday = false;

    return isMonday == true;
  }

  bool exercise21() {
    var numbers = [1, 2, 3, 4, 5];

    bool hasThree = false;

    return hasThree == true;
  }

  bool exercise22() {
    var numbers = [1, 2, 3, 4, 5];

    bool allEven = false;

    return allEven == true;
  }

  bool exercise23() {
    var numbers = [1, 2, 3, 4, 5];

    bool hasGreaterThanFive = false;

    return hasGreaterThanFive == true;
  }

  bool exercise24() {
    var numbers = [1, 2, 3, 4, 5];

    bool hasLessThanZero = false;

    return hasLessThanZero == true;
  }

  bool exercise25() {
    var numbers = [1, 2, 3, 4, 5];

    bool oddCountEqualEvenCount = false;

    return oddCountEqualEvenCount == true;
  }

  bool exercise26() {
    var numbers = [1, 2, 3, 4, 5];

    bool largestIsFive = false;

    return largestIsFive == true;
  }

  bool exercise27() {
    var numbers = [1, 2, 3, 4, 5];

    bool smallestIsOne = false;

    return smallestIsOne == true;
  }

  bool exercise28() {
    var numbers = [1, 2, 3, 4, 5];

    bool countIsFive = false;

    return countIsFive == true;
  }

  bool exercise29() {
    var numbers = [1, 2, 3, 4, 5];

    bool hasDuplicate = false;

    return hasDuplicate == true;
  }

  bool exercise30() {
    var number = 5;
    var result;

    return result == "Positif";
  }

  bool exercise31() {
    int num1 = 5;
    int num2 = 10;

    bool? result;

    return result == true;
  }

  bool exercise32() {
    int num1 = 5;
    int num2 = 10;

    bool? result;

    return result == true;
  }

  bool exercise33() {
    int num1 = 5;
    int num2 = 10;

    bool? result;

    return result == true;
  }

  bool exercise34() {
    int num1 = 5;
    int num2 = 10;

    bool? result;

    return result == false;
  }

  bool exercise35() {
    int num1 = 5;
    int num2 = 10;

    bool? result;

    return result == true;
  }

  Widget build(context, FbkDartIfStatementController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartIfStatement"),
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
  State<FbkDartIfStatementView> createState() => FbkDartIfStatementController();
}
