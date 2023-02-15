import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart4_view.dart';

class ECart4Controller extends State<ECart4View> implements MvcController {
  static late ECart4Controller instance;
  late ECart4View view;

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
