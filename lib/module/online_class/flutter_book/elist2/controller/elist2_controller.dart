import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist2_view.dart';

class EList2Controller extends State<EList2View> implements MvcController {
  static late EList2Controller instance;
  late EList2View view;

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
