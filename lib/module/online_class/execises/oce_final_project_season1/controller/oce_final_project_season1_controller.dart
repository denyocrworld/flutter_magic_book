import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oce_final_project_season1_view.dart';

class OceFinalProjectSeason1Controller extends State<OceFinalProjectSeason1View>
    implements MvcController {
  static late OceFinalProjectSeason1Controller instance;
  late OceFinalProjectSeason1View view;

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
