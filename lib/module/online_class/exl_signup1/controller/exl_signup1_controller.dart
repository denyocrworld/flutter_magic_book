import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/exl_signup1_view.dart';

class ExlSignup1Controller extends State<ExlSignup1View>
    implements MvcController {
  static late ExlSignup1Controller instance;
  late ExlSignup1View view;

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
