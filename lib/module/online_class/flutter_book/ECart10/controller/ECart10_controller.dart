import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart10_view.dart';

class ECart10Controller extends State<ECart10View> implements MvcController {
  static late ECart10Controller instance;
  late ECart10View view;

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
