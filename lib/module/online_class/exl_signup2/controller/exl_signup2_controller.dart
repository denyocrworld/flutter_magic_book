import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/exl_signup2_view.dart';

class ExlSignup2Controller extends State<ExlSignup2View>
    implements MvcController {
  static late ExlSignup2Controller instance;
  late ExlSignup2View view;

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
