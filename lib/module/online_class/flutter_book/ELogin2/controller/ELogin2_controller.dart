import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin2_view.dart';

class ELogin2Controller extends State<ELogin2View> implements MvcController {
  static late ELogin2Controller instance;
  late ELogin2View view;

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
