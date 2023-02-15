import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart7_view.dart';

class ECart7Controller extends State<ECart7View> implements MvcController {
  static late ECart7Controller instance;
  late ECart7View view;

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
