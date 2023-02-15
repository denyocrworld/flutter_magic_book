import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eeditprofile2_view.dart';

class EEditProfile2Controller extends State<EEditProfile2View>
    implements MvcController {
  static late EEditProfile2Controller instance;
  late EEditProfile2View view;

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
