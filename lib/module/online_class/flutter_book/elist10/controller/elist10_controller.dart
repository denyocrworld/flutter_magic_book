import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist10_view.dart';

class EList10Controller extends State<EList10View> implements MvcController {
  static late EList10Controller instance;
  late EList10View view;

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
