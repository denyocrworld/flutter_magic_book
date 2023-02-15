import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist3_view.dart';

class EList3Controller extends State<EList3View> implements MvcController {
  static late EList3Controller instance;
  late EList3View view;

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
