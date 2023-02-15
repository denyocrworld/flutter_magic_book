import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist4_view.dart';

class EList4Controller extends State<EList4View> implements MvcController {
  static late EList4Controller instance;
  late EList4View view;

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
