import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin7_view.dart';

class ELogin7Controller extends State<ELogin7View> implements MvcController {
  static late ELogin7Controller instance;
  late ELogin7View view;

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
