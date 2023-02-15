import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin1_view.dart';

class ELogin1Controller extends State<ELogin1View> implements MvcController {
  static late ELogin1Controller instance;
  late ELogin1View view;

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
