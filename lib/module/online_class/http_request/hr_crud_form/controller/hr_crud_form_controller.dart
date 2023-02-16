import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_crud_form_view.dart';

class HrCrudFormController extends State<HrCrudFormView>
    implements MvcController {
  static late HrCrudFormController instance;
  late HrCrudFormView view;

  @override
  void initState() {
    instance = this;
    if (widget.item != null) {
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
      description = widget.item!["description"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode {
    return view.item != null;
  }

  String? photo;
  String? productName;
  double? price;
  String? description;

  doSave() async {
    if (isEditMode) {
      //update

      var id = widget.item!["id"];
      var response = await Dio().post(
        "${AppConfig.baseUrl}/deny/api/products/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": photo,
          "product_name": productName,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    } else {
      //create

      var response = await Dio().post(
        "${AppConfig.baseUrl}/deny/api/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": photo,
          "product_name": productName,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    }

    Get.back();
  }
}
