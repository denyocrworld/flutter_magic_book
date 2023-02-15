import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ovh4_view.dart';

class Ovh4Controller extends State<Ovh4View> implements MvcController {
  static late Ovh4Controller instance;
  late Ovh4View view;

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
