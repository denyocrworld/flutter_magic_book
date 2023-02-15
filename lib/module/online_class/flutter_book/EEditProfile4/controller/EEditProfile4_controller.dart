import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile4_view.dart';

class EEditProfile4Controller extends State<EEditProfile4View>
    implements MvcController {
  static late EEditProfile4Controller instance;
  late EEditProfile4View view;

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
