import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbCrudFormController extends State<FbCrudFormView>
    implements MvcController {
  static late FbCrudFormController instance;
  late FbCrudFormView view;

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
    return widget.item != null;
  }

  String? photo;
  String? productName;
  double? price;
  String? description;
  doSave() async {
    var data = {
      "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
    };

    if (isEditMode) {
      await FirebaseFirestore.instance
          .collection("foods")
          .doc(widget.item!["id"])
          .update(data);
    } else {
      await FirebaseFirestore.instance.collection("foods").add(data);
    }
    Get.back();
  }
}
