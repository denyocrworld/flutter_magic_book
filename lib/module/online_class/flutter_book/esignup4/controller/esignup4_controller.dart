import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup4_view.dart';

class ESignup4Controller extends State<ESignup4View> implements MvcController {
  static late ESignup4Controller instance;
  late ESignup4View view;

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
