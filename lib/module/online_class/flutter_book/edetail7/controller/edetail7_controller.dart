import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail7_view.dart';

class EDetail7Controller extends State<EDetail7View> implements MvcController {
  static late EDetail7Controller instance;
  late EDetail7View view;

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
