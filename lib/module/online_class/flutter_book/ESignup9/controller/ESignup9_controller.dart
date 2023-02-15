import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup9_view.dart';

class ESignup9Controller extends State<ESignup9View> implements MvcController {
  static late ESignup9Controller instance;
  late ESignup9View view;

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
