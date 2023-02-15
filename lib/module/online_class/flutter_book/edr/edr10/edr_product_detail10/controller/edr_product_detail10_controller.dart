import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_product_detail10_view.dart';

class EdrProductDetail10Controller extends State<EdrProductDetail10View>
    implements MvcController {
  static late EdrProductDetail10Controller instance;
  late EdrProductDetail10View view;

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
