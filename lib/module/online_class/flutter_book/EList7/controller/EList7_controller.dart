import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist7_view.dart';

class EList7Controller extends State<EList7View> implements MvcController {
  static late EList7Controller instance;
  late EList7View view;

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
