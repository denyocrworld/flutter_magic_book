import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup8_view.dart';

class ESignup8Controller extends State<ESignup8View> implements MvcController {
  static late ESignup8Controller instance;
  late ESignup8View view;

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
