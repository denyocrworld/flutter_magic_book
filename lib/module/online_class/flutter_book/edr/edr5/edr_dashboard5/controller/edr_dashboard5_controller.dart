import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard5_view.dart';

class EdrDashboard5Controller extends State<EdrDashboard5View>
    implements MvcController {
  static late EdrDashboard5Controller instance;
  late EdrDashboard5View view;

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
