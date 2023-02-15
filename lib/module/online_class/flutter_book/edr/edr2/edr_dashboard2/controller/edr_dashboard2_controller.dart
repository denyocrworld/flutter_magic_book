import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard2_view.dart';

class EdrDashboard2Controller extends State<EdrDashboard2View>
    implements MvcController {
  static late EdrDashboard2Controller instance;
  late EdrDashboard2View view;

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
