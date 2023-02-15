import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile1_view.dart';

class EEditProfile1Controller extends State<EEditProfile1View>
    implements MvcController {
  static late EEditProfile1Controller instance;
  late EEditProfile1View view;

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
