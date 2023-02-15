import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup1_view.dart';

class ESignup1Controller extends State<ESignup1View> implements MvcController {
  static late ESignup1Controller instance;
  late ESignup1View view;

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
