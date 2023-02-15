import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart2_view.dart';

class ECart2Controller extends State<ECart2View> implements MvcController {
  static late ECart2Controller instance;
  late ECart2View view;

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
