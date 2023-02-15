import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail1_view.dart';

class EDetail1Controller extends State<EDetail1View> implements MvcController {
  static late EDetail1Controller instance;
  late EDetail1View view;

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
