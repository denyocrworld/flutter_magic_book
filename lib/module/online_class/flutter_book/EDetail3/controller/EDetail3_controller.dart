import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail3_view.dart';

class EDetail3Controller extends State<EDetail3View> implements MvcController {
  static late EDetail3Controller instance;
  late EDetail3View view;

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
