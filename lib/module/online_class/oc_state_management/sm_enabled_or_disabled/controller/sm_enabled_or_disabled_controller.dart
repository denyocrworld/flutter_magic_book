import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_enabled_or_disabled_view.dart';

class SmEnabledOrDisabledController extends State<SmEnabledOrDisabledView>
    implements MvcController {
  static late SmEnabledOrDisabledController instance;
  late SmEnabledOrDisabledView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  bool enabled = false;

  updateState() {
    if (email.isEmpty || password.isEmpty) {
      enabled = false;
    } else {
      enabled = true;
    }
    setState(() {});
  }
}
