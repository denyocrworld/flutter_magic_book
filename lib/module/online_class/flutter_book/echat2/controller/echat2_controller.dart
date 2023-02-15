import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat2_view.dart';

class EChat2Controller extends State<EChat2View> implements MvcController {
  static late EChat2Controller instance;
  late EChat2View view;

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
