import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_order_list_view.dart';

class HrOrderListController extends State<HrOrderListView>
    implements MvcController {
  static late HrOrderListController instance;
  late HrOrderListView view;

  @override
  void initState() {
    instance = this;
    loadOrderList();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List orderList = [];
  loadOrderList() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/deny/api/orders",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    orderList = obj["data"];
    setState(() {});
  }
}
