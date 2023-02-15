import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard4_view.dart';

class EdrDashboard4Controller extends State<EdrDashboard4View>
    implements MvcController {
  static late EdrDashboard4Controller instance;
  late EdrDashboard4View view;

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
