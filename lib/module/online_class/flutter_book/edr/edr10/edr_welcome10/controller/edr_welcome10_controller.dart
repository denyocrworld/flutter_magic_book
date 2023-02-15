import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_welcome10_view.dart';

class EdrWelcome10Controller extends State<EdrWelcome10View>
    implements MvcController {
  static late EdrWelcome10Controller instance;
  late EdrWelcome10View view;

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
