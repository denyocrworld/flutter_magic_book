import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist8_view.dart';

class EList8Controller extends State<EList8View> implements MvcController {
  static late EList8Controller instance;
  late EList8View view;

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
