import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat6_view.dart';

class EChat6Controller extends State<EChat6View> implements MvcController {
  static late EChat6Controller instance;
  late EChat6View view;

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
