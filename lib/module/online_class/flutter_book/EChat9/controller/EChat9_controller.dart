import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat9_view.dart';

class EChat9Controller extends State<EChat9View> implements MvcController {
  static late EChat9Controller instance;
  late EChat9View view;

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
