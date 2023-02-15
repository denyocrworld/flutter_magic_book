import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile7_view.dart';

class EProfile7Controller extends State<EProfile7View>
    implements MvcController {
  static late EProfile7Controller instance;
  late EProfile7View view;

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
