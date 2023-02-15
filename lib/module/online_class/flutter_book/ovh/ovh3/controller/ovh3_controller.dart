import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ovh3_view.dart';

class Ovh3Controller extends State<Ovh3View> implements MvcController {
  static late Ovh3Controller instance;
  late Ovh3View view;

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
