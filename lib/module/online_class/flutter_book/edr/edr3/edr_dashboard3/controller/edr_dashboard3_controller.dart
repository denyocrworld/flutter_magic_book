import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard3_view.dart';

class EdrDashboard3Controller extends State<EdrDashboard3View>
    implements MvcController {
  static late EdrDashboard3Controller instance;
  late EdrDashboard3View view;

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
