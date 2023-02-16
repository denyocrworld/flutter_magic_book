import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_dropdown_view.dart';

class HrDropdownController extends State<HrDropdownView>
    implements MvcController {
  static late HrDropdownController instance;
  late HrDropdownView view;

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

    /*
    {
      "id": 1,
      "email": "george.bluth@reqres.in",
      "first_name": "George",
      "last_name": "Bluth",
      "avatar": "https://reqres.in/img/faces/1-image.jpg"
    },

    {
                    "label": "Admin",
                    "value": 1,
    },
    */
  }
}
