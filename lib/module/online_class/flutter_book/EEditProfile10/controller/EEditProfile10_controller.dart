import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile10_view.dart';

class EEditProfile10Controller extends State<EEditProfile10View>
    implements MvcController {
  static late EEditProfile10Controller instance;
  late EEditProfile10View view;

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
