import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/echat7_view.dart';

class EChat7Controller extends State<EChat7View> implements MvcController {
  static late EChat7Controller instance;
  late EChat7View view;

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
