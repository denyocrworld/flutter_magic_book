import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail9_view.dart';

class EDetail9Controller extends State<EDetail9View> implements MvcController {
  static late EDetail9Controller instance;
  late EDetail9View view;

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
