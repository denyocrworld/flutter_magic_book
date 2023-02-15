import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail2_view.dart';

class EDetail2Controller extends State<EDetail2View> implements MvcController {
  static late EDetail2Controller instance;
  late EDetail2View view;

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
