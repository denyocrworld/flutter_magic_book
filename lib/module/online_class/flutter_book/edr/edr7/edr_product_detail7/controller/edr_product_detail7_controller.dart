import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_product_detail7_view.dart';

class EdrProductDetail7Controller extends State<EdrProductDetail7View>
    implements MvcController {
  static late EdrProductDetail7Controller instance;
  late EdrProductDetail7View view;

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
