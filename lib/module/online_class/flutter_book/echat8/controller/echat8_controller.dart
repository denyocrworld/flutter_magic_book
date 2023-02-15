import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat8_view.dart';

class EChat8Controller extends State<EChat8View> implements MvcController {
  static late EChat8Controller instance;
  late EChat8View view;

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
