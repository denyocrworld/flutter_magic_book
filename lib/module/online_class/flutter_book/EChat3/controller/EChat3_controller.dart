import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat3_view.dart';

class EChat3Controller extends State<EChat3View> implements MvcController {
  static late EChat3Controller instance;
  late EChat3View view;

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
