import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_dashboard_view.dart';

class OcDashboardController extends State<OcDashboardView>
    implements MvcController {
  static late OcDashboardController instance;
  late OcDashboardView view;

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
