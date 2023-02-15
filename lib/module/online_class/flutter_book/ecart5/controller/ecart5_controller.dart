import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart5_view.dart';

class ECart5Controller extends State<ECart5View> implements MvcController {
  static late ECart5Controller instance;
  late ECart5View view;

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
