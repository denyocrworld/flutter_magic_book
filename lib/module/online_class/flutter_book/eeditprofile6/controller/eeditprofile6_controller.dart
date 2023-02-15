import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile6_view.dart';

class EEditProfile6Controller extends State<EEditProfile6View>
    implements MvcController {
  static late EEditProfile6Controller instance;
  late EEditProfile6View view;

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
