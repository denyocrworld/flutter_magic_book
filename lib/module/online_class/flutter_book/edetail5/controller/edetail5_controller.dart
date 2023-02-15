import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail5_view.dart';

class EDetail5Controller extends State<EDetail5View> implements MvcController {
  static late EDetail5Controller instance;
  late EDetail5View view;

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
