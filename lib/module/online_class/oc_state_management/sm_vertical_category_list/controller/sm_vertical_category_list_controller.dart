import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_vertical_category_list_view.dart';

class SmVerticalCategoryListController extends State<SmVerticalCategoryListView>
    implements MvcController {
  static late SmVerticalCategoryListController instance;
  late SmVerticalCategoryListView view;

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
