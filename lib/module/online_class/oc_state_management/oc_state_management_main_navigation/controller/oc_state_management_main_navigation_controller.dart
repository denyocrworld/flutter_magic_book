import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_state_management_main_navigation_view.dart';

class OcStateManagementMainNavigationController
    extends State<OcStateManagementMainNavigationView>
    implements MvcController {
  static late OcStateManagementMainNavigationController instance;
  late OcStateManagementMainNavigationView view;

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
