import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification6_view.dart';

class ENotification6Controller extends State<ENotification6View>
    implements MvcController {
  static late ENotification6Controller instance;
  late ENotification6View view;

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
