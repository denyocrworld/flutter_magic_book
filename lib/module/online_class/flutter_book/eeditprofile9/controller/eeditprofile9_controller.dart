import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile9_view.dart';

class EEditProfile9Controller extends State<EEditProfile9View>
    implements MvcController {
  static late EEditProfile9Controller instance;
  late EEditProfile9View view;

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
