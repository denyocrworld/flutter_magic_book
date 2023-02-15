import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist9_view.dart';

class EList9Controller extends State<EList9View> implements MvcController {
  static late EList9Controller instance;
  late EList9View view;

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
