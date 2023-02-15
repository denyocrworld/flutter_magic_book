import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/esignup3_view.dart';

class ESignup3Controller extends State<ESignup3View> implements MvcController {
  static late ESignup3Controller instance;
  late ESignup3View view;

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
