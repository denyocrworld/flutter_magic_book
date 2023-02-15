import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin10_view.dart';

class ELogin10Controller extends State<ELogin10View> implements MvcController {
  static late ELogin10Controller instance;
  late ELogin10View view;

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
