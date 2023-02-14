import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ECart1_view.dart';

class ECart1Controller extends State<ECart1View> implements MvcController {
  static late ECart1Controller instance;
  late ECart1View view;

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
