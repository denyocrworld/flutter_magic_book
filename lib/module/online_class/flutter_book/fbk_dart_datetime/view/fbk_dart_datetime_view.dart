import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartDatetimeView extends StatefulWidget {
  const FbkDartDatetimeView({Key? key}) : super(key: key);

  bool? exercise1() {
    DateTime date = DateTime(2023, 8, 1);

    String datef = "";
    return datef == "2023-08-01";
  }

  bool? exercise2() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);

    String datef = "";
    return datef == "2023-08-01 20:21";
  }

  bool? exercise3() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);

    int day = 0;
    return day == 1;
  }

  bool? exercise4() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);

    int day = 0;
    return day == 8;
  }

  bool? exercise5() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);

    int day = 0;
    return day == 2023;
  }

  bool? exercise6() {
    DateTime date = DateTime(2023, 8, 1, 15, 30);

    String time = "";
    return time == "15:30";
  }

  bool? exercise7() {
    Timestamp timestamp = Timestamp.now();

    DateTime? date;

    return date != null;
  }

  bool? exercise8() {
    Timestamp timestamp = Timestamp.now();

    DateTime? date;
    String datef = "";

    return datef.length == 10;
  }

  bool? exercise9() {
    DateTime startAt = DateTime(2023, 8, 1, 15, 30);
    DateTime endAt = DateTime(2023, 9, 1, 15, 30);

    int diff = 0;
    return diff == 31;
  }

  bool? exercise10() {
    DateTime date = DateTime(2023, 8, 1, 15, 30);

    String datef = "";
    return datef == "Tuesday, 1 Aug 2023";
  }

  bool exercise11() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "1 Januari 2022";
  }

  bool exercise12() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "Senin, 1 Januari 2022";
  }

  bool exercise13() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "Senin, 1 Jan 2022";
  }

  bool exercise14() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "Sen, 1 Jan 2022";
  }

  bool exercise15() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "1/1/22";
  }

  bool exercise16() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "1-1-22";
  }

  bool exercise17() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "2022-01-01";
  }

  bool exercise18() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "2022.01.01";
  }

  bool exercise19() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "2022/01/01";
  }

  bool exercise20() {
    var date = DateTime(2022, 1, 1);

    String? output;

    return output == "2022 01 01";
  }

  bool exercise21() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 2 && result.month == 1 && result.year == 2022;
  }

  bool exercise22() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 31 && result.month == 12 && result.year == 2021;
  }

  bool exercise23() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 2 && result.year == 2022;
  }

  bool exercise24() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 12 && result.year == 2021;
  }

  bool exercise25() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 1 && result.year == 2023;
  }

  bool exercise26() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 1 && result.year == 2021;
  }

  bool exercise27() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 6 && result.month == 1 && result.year == 2022;
  }

  bool exercise28() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 27 && result.month == 12 && result.year == 2021;
  }

  bool exercise29() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 3 && result.year == 2022;
  }

  bool exercise30() {
    var date = DateTime(2022, 1, 1);

    var result = date;

    return result.day == 1 && result.month == 11 && result.year == 2021;
  }

  bool exercise31() {
    var date1 = DateTime(2022, 1, 1);
    var date2 = DateTime(2022, 1, 2);

    int? difference;

    return difference == 1;
  }

  bool exercise32() {
    var date1 = DateTime(2022, 1, 1);
    var date2 = DateTime(2023, 1, 1);

    int? difference;

    return difference == 1;
  }

  bool exercise33() {
    var date1 = DateTime(2022, 1, 1);
    var date2 = DateTime(2022, 2, 1);

    int? difference;

    return difference == 1;
  }

  bool exercise34() {
    var date1 = DateTime(2022, 1, 1);
    var date2 = DateTime(2022, 1, 2);

    int? difference;

    return difference == 1;
  }

  bool exercise35() {
    var date1 = DateTime(2022, 1, 1);
    var date2 = DateTime(2022, 1, 1, 5, 0, 0);

    int? difference;

    return difference == 5;
  }

  Widget build(context, FbkDartDatetimeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartDatetime"),
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
  State<FbkDartDatetimeView> createState() => FbkDartDatetimeController();
}
