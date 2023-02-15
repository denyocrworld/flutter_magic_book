import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup6_view.dart';

class ESignup6Controller extends State<ESignup6View> implements MvcController {
  static late ESignup6Controller instance;
  late ESignup6View view;

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
