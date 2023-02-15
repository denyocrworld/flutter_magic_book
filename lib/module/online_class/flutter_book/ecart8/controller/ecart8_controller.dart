import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart8_view.dart';

class ECart8Controller extends State<ECart8View> implements MvcController {
  static late ECart8Controller instance;
  late ECart8View view;

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
