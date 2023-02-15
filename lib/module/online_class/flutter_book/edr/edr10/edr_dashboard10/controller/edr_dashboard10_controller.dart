import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard10_view.dart';

class EdrDashboard10Controller extends State<EdrDashboard10View>
    implements MvcController {
  static late EdrDashboard10Controller instance;
  late EdrDashboard10View view;

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
