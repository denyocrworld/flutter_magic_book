import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ovh2_view.dart';

class Ovh2Controller extends State<Ovh2View> implements MvcController {
  static late Ovh2Controller instance;
  late Ovh2View view;

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
