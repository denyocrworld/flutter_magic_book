import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ex_main_navigation_view.dart';

class ExMainNavigationController extends State<ExMainNavigationView>
    implements MvcController {
  static late ExMainNavigationController instance;
  late ExMainNavigationView view;

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
