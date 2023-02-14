import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_horizontal_category_list_view.dart';

class FbHorizontalCategoryListController
    extends State<FbHorizontalCategoryListView> implements MvcController {
  static late FbHorizontalCategoryListController instance;
  late FbHorizontalCategoryListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String selectedId = "";
}
