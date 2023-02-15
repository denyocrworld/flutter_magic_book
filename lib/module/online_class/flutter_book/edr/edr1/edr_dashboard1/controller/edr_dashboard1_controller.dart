import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard1_view.dart';

class EdrDashboard1Controller extends State<EdrDashboard1View>
    implements MvcController {
  static late EdrDashboard1Controller instance;
  late EdrDashboard1View view;

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
