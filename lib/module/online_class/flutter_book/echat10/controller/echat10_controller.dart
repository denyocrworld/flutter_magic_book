import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat10_view.dart';

class EChat10Controller extends State<EChat10View> implements MvcController {
  static late EChat10Controller instance;
  late EChat10View view;

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
