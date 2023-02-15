import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elist5_view.dart';

class EList5Controller extends State<EList5View> implements MvcController {
  static late EList5Controller instance;
  late EList5View view;

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
