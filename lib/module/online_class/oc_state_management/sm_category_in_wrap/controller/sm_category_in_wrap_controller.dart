import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_category_in_wrap_view.dart';

class SmCategoryInWrapController extends State<SmCategoryInWrapView>
    implements MvcController {
  static late SmCategoryInWrapController instance;
  late SmCategoryInWrapView view;

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
    "SAMPO",
    "SABUN",
    "ODOL",
    "GARAM",
    "KOPI",
  ];

  updateCategory(String item) {
    selectedItem = item;
    setState(() {});
  }
}
