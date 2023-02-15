import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat4_view.dart';

class EChat4Controller extends State<EChat4View> implements MvcController {
  static late EChat4Controller instance;
  late EChat4View view;

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
