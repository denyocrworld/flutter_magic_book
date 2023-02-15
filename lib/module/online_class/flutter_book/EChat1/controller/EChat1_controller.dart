import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat1_view.dart';

class EChat1Controller extends State<EChat1View> implements MvcController {
  static late EChat1Controller instance;
  late EChat1View view;

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
