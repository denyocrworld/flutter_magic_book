import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_chart_view.dart';

class HrChartController extends State<HrChartView> implements MvcController {
  static late HrChartController instance;
  late HrChartView view;

  @override
  void initState() {
    instance = this;
    getSales();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<dynamic, dynamic>> sales = [];
  getSales() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/deny/api/sales",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    print(obj);
    sales = List.from(obj["data"]);
    setState(() {});
  }
}
