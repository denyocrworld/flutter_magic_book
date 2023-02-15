import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/exl_login1_view.dart';

class ExlLogin1Controller extends State<ExlLogin1View>
    implements MvcController {
  static late ExlLogin1Controller instance;
  late ExlLogin1View view;

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
