import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart9_view.dart';

class ECart9Controller extends State<ECart9View> implements MvcController {
  static late ECart9Controller instance;
  late ECart9View view;

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
