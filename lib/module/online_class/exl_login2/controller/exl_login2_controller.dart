import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/exl_login2_view.dart';

class ExlLogin2Controller extends State<ExlLogin2View>
    implements MvcController {
  static late ExlLogin2Controller instance;
  late ExlLogin2View view;

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
