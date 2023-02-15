import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_cart8_view.dart';

class EdrCart8Controller extends State<EdrCart8View> implements MvcController {
  static late EdrCart8Controller instance;
  late EdrCart8View view;

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
