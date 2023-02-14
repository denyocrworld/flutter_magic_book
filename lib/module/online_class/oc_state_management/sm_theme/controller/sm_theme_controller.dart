import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_theme_view.dart';

class SmThemeController extends State<SmThemeView> implements MvcController {
  static late SmThemeController instance;
  late SmThemeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool darkMode = false;

  ThemeData get theme {
    if (darkMode) return ThemeData.dark();
    return ThemeData();
  }
}
