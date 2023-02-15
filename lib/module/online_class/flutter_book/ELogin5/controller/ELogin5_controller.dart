import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin5_view.dart';

class ELogin5Controller extends State<ELogin5View> implements MvcController {
  static late ELogin5Controller instance;
  late ELogin5View view;

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
