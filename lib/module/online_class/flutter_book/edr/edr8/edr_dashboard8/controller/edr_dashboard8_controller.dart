import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard8_view.dart';

class EdrDashboard8Controller extends State<EdrDashboard8View>
    implements MvcController {
  static late EdrDashboard8Controller instance;
  late EdrDashboard8View view;

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
