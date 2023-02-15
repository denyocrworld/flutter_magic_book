import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile10_view.dart';

class EProfile10Controller extends State<EProfile10View>
    implements MvcController {
  static late EProfile10Controller instance;
  late EProfile10View view;

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
