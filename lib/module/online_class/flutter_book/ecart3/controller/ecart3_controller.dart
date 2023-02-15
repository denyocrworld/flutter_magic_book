import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecart3_view.dart';

class ECart3Controller extends State<ECart3View> implements MvcController {
  static late ECart3Controller instance;
  late ECart3View view;

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
