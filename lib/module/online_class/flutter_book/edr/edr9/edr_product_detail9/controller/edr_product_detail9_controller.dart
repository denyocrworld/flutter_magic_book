import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_product_detail9_view.dart';

class EdrProductDetail9Controller extends State<EdrProductDetail9View>
    implements MvcController {
  static late EdrProductDetail9Controller instance;
  late EdrProductDetail9View view;

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
