import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup7_view.dart';

class ESignup7Controller extends State<ESignup7View> implements MvcController {
  static late ESignup7Controller instance;
  late ESignup7View view;

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
