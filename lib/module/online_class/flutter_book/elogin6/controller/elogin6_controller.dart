import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin6_view.dart';

class ELogin6Controller extends State<ELogin6View> implements MvcController {
  static late ELogin6Controller instance;
  late ELogin6View view;

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
