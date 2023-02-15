import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail4_view.dart';

class EDetail4Controller extends State<EDetail4View> implements MvcController {
  static late EDetail4Controller instance;
  late EDetail4View view;

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
