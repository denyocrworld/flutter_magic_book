import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_dashboard7_view.dart';

class EdrDashboard7Controller extends State<EdrDashboard7View>
    implements MvcController {
  static late EdrDashboard7Controller instance;
  late EdrDashboard7View view;

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
