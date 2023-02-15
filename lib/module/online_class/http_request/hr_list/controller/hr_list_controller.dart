import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_list_view.dart';

class HrListController extends State<HrListView> implements MvcController {
  static late HrListController instance;
  late HrListView view;

  @override
  void initState() {
    instance = this;
    loadUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List userList = [];
  loadUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    print(obj);
    userList = obj["data"];
    setState(() {});
  }
}
