import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_main_navigation_view.dart';

class FbkMainNavigationController extends State<FbkMainNavigationView>
    implements MvcController {
  static late FbkMainNavigationController instance;
  late FbkMainNavigationView view;

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
