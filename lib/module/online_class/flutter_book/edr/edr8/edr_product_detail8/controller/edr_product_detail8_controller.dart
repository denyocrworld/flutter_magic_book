import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_product_detail8_view.dart';

class EdrProductDetail8Controller extends State<EdrProductDetail8View>
    implements MvcController {
  static late EdrProductDetail8Controller instance;
  late EdrProductDetail8View view;

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
