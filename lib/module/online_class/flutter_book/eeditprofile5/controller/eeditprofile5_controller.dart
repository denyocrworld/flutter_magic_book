import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile5_view.dart';

class EEditProfile5Controller extends State<EEditProfile5View>
    implements MvcController {
  static late EEditProfile5Controller instance;
  late EEditProfile5View view;

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
