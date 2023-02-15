import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup2_view.dart';

class ESignup2Controller extends State<ESignup2View> implements MvcController {
  static late ESignup2Controller instance;
  late ESignup2View view;

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
