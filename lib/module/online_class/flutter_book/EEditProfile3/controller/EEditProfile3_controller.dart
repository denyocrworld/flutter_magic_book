import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile3_view.dart';

class EEditProfile3Controller extends State<EEditProfile3View>
    implements MvcController {
  static late EEditProfile3Controller instance;
  late EEditProfile3View view;

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
