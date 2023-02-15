import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile4_view.dart';

class EProfile4Controller extends State<EProfile4View>
    implements MvcController {
  static late EProfile4Controller instance;
  late EProfile4View view;

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
