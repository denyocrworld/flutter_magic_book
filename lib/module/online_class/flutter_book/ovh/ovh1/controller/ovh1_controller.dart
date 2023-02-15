import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ovh1_view.dart';

class Ovh1Controller extends State<Ovh1View> implements MvcController {
  static late Ovh1Controller instance;
  late Ovh1View view;

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
