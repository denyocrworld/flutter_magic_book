import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail6_view.dart';

class EDetail6Controller extends State<EDetail6View> implements MvcController {
  static late EDetail6Controller instance;
  late EDetail6View view;

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
