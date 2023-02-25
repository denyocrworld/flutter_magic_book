import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_restaurant_product_list_view.dart';

class FdRestaurantProductListController
    extends State<FdRestaurantProductListView> implements MvcController {
  static late FdRestaurantProductListController instance;
  late FdRestaurantProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  deleteProduct(Map item) async {
    await FirebaseFirestore.instance
        .collection("fd_products")
        .doc(item["id"])
        .delete();
  }

  String search = "";
  updateSearch(String value) {
    search = value;
    setState(() {});
  }
}
