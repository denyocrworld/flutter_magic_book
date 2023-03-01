import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_http_product_list_view.dart';

class OcHttpProductListController extends State<OcHttpProductListView>
    implements MvcController {
  static late OcHttpProductListController instance;
  late OcHttpProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
