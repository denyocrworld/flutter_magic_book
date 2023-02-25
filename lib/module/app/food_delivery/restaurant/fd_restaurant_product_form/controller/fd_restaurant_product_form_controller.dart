import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_restaurant_product_form_view.dart';

class FdRestaurantProductFormController
    extends State<FdRestaurantProductFormView> implements MvcController {
  static late FdRestaurantProductFormController instance;
  late FdRestaurantProductFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
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
    return widget.item != null;
  }

  String? photo;
  String? productName;
  double? price;
  String? description;
  doSave() async {
    //fire_add
    if (isEditMode) {
      //fire_update
      await FirebaseFirestore.instance
          .collection("fd_products")
          .doc(widget.item!["id"])
          .update({
        "photo": photo,
        "product_name": productName,
        "price": price,
        "description": description,
      });
    } else {
      await FirebaseFirestore.instance.collection("fd_products").add({
        "photo": photo,
        "product_name": productName,
        "barcode": "FDR-${productName?.replaceAll(" ", "-").toUpperCase()}",
        "price": price,
        "description": description,
      });
    }
    Get.back();
  }
}
