import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_horizontal_category_list_view.dart';

class HrHorizontalCategoryListController
    extends State<HrHorizontalCategoryListView> implements MvcController {
  static late HrHorizontalCategoryListController instance;
  late HrHorizontalCategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doGenerate() async {
    for (var i = 1; i <= 10; i++) {
      var response = await Dio().post(
        "https://capekngoding.com/deny/api/product_categories",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "id": i,
          "category_name": "Category ${Random().nextInt(100)}",
        },
      );
    }
  }

  List categoryList = [];
  loadProductCategoryList() async {
    var response = await Dio().get(
      "https://capekngoding.com/deny/api/product_categories",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    categoryList = obj["data"];
    setState(() {});
  }
}
