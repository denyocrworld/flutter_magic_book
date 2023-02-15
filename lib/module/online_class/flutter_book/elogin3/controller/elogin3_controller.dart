import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elogin3_view.dart';

class ELogin3Controller extends State<ELogin3View> implements MvcController {
  static late ELogin3Controller instance;
  late ELogin3View view;

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
