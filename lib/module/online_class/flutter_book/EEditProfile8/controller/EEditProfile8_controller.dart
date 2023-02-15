import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile8_view.dart';

class EEditProfile8Controller extends State<EEditProfile8View>
    implements MvcController {
  static late EEditProfile8Controller instance;
  late EEditProfile8View view;

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
