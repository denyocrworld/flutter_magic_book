import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup5_view.dart';

class ESignup5Controller extends State<ESignup5View> implements MvcController {
  static late ESignup5Controller instance;
  late ESignup5View view;

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
