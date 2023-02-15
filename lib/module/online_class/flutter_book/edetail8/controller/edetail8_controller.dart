import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail8_view.dart';

class EDetail8Controller extends State<EDetail8View> implements MvcController {
  static late EDetail8Controller instance;
  late EDetail8View view;

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
