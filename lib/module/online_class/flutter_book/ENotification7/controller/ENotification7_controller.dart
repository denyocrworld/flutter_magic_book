import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification7_view.dart';

class ENotification7Controller extends State<ENotification7View>
    implements MvcController {
  static late ENotification7Controller instance;
  late ENotification7View view;

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
