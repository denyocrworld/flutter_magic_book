import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart6_view.dart';

class ECart6Controller extends State<ECart6View> implements MvcController {
  static late ECart6Controller instance;
  late ECart6View view;

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
