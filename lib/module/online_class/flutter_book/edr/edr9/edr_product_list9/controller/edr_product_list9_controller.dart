import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_product_list9_view.dart';

class EdrProductList9Controller extends State<EdrProductList9View>
    implements MvcController {
  static late EdrProductList9Controller instance;
  late EdrProductList9View view;

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
