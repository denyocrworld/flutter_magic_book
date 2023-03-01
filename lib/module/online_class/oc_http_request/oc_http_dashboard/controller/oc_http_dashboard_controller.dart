import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_http_dashboard_view.dart';

class OcHttpDashboardController extends State<OcHttpDashboardView>
    implements MvcController {
  static late OcHttpDashboardController instance;
  late OcHttpDashboardView view;

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
