import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_crud_list_view.dart';

class HrCrudListController extends State<HrCrudListView>
    implements MvcController {
  static late HrCrudListController instance;
  late HrCrudListView view;

  @override
  void initState() {
    instance = this;
    getProductList();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List productList = [];
  getProductList() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    productList = obj["data"];
    setState(() {});
  }

  deleteProduct(int id) async {
    var response = await Dio().delete(
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      "${AppConfig.baseUrl}/deny/api/products/$id",
    );
    getProductList();
  }
}
