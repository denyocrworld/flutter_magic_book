import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/exl_dashboard2_view.dart';

class ExlDashboard2Controller extends State<ExlDashboard2View>
    implements MvcController {
  static late ExlDashboard2Controller instance;
  late ExlDashboard2View view;

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
