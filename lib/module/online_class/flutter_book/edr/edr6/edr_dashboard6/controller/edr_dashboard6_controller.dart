import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard6_view.dart';

class EdrDashboard6Controller extends State<EdrDashboard6View>
    implements MvcController {
  static late EdrDashboard6Controller instance;
  late EdrDashboard6View view;

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
