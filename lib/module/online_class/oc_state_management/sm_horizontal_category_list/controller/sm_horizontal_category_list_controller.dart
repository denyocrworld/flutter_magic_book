import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_horizontal_category_list_view.dart';

class SmHorizontalCategoryListController
    extends State<SmHorizontalCategoryListView> implements MvcController {
  static late SmHorizontalCategoryListController instance;
  late SmHorizontalCategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String selectedItem = "";
  List categoryList = [
    "ROKOK",
    "GULA",
    "SUSU",
    "MINYAK",
    "AIR MINERAL",
    "CIKI",
  ];

  updateCategory(String item) {
    selectedItem = item;
    setState(() {});
  }
}
