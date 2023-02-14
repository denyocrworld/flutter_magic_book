import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_wrap_category_list_view.dart';

class FbWrapCategoryListController extends State<FbWrapCategoryListView>
    implements MvcController {
  static late FbWrapCategoryListController instance;
  late FbWrapCategoryListView view;

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
