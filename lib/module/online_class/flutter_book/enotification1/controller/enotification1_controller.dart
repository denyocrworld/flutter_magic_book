import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification1_view.dart';

class ENotification1Controller extends State<ENotification1View>
    implements MvcController {
  static late ENotification1Controller instance;
  late ENotification1View view;

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
