import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile6_view.dart';

class EProfile6Controller extends State<EProfile6View>
    implements MvcController {
  static late EProfile6Controller instance;
  late EProfile6View view;

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
