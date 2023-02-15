import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification4_view.dart';

class ENotification4Controller extends State<ENotification4View>
    implements MvcController {
  static late ENotification4Controller instance;
  late ENotification4View view;

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
