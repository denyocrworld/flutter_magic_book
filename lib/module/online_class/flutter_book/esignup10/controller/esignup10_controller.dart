import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup10_view.dart';

class ESignup10Controller extends State<ESignup10View>
    implements MvcController {
  static late ESignup10Controller instance;
  late ESignup10View view;

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
