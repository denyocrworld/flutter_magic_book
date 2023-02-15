import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat5_view.dart';

class EChat5Controller extends State<EChat5View> implements MvcController {
  static late EChat5Controller instance;
  late EChat5View view;

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
