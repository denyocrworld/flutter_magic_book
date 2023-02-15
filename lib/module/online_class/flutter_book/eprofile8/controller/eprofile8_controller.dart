import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile8_view.dart';

class EProfile8Controller extends State<EProfile8View>
    implements MvcController {
  static late EProfile8Controller instance;
  late EProfile8View view;

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
