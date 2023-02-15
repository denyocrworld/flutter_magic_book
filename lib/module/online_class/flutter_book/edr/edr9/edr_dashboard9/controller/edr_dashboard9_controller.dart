import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard9_view.dart';

class EdrDashboard9Controller extends State<EdrDashboard9View>
    implements MvcController {
  static late EdrDashboard9Controller instance;
  late EdrDashboard9View view;

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
