import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile7_view.dart';

class EEditProfile7Controller extends State<EEditProfile7View>
    implements MvcController {
  static late EEditProfile7Controller instance;
  late EEditProfile7View view;

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
