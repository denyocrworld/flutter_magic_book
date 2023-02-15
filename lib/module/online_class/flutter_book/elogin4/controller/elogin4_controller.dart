import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin4_view.dart';

class ELogin4Controller extends State<ELogin4View> implements MvcController {
  static late ELogin4Controller instance;
  late ELogin4View view;

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
