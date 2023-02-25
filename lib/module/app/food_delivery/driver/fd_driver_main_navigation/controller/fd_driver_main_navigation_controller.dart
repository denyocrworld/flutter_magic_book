import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_driver_main_navigation_view.dart';

class FdDriverMainNavigationController extends State<FdDriverMainNavigationView>
    implements MvcController {
  static late FdDriverMainNavigationController instance;
  late FdDriverMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
