import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ovh5_view.dart';

class Ovh5Controller extends State<Ovh5View> implements MvcController {
  static late Ovh5Controller instance;
  late Ovh5View view;

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
