import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist6_view.dart';

class EList6Controller extends State<EList6View> implements MvcController {
  static late EList6Controller instance;
  late EList6View view;

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
