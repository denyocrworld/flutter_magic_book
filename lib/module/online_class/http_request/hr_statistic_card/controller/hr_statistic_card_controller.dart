import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_statistic_card_view.dart';

class HrStatisticCardController extends State<HrStatisticCardView>
    implements MvcController {
  static late HrStatisticCardController instance;
  late HrStatisticCardView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int productCount = 0;
  getProducts() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    productCount = obj["data_count"];
    setState(() {});
  }
}
