import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin8_view.dart';

class ELogin8Controller extends State<ELogin8View> implements MvcController {
  static late ELogin8Controller instance;
  late ELogin8View view;

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
