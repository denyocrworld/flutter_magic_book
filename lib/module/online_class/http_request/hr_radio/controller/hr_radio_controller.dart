import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_radio_view.dart';

class HrRadioController extends State<HrRadioView> implements MvcController {
  static late HrRadioController instance;
  late HrRadioView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> userList = [];
  loadUserList() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;

    var tempUserList = obj["data"];
    for (var user in tempUserList) {
      userList.add({
        "label": user["first_name"],
        "value": user["id"],
      });
    }
    setState(() {});
  }
}
