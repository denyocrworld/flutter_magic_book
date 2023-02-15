import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile9_view.dart';

class EProfile9Controller extends State<EProfile9View>
    implements MvcController {
  static late EProfile9Controller instance;
  late EProfile9View view;

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
