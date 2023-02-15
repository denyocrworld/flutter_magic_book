import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification9_view.dart';

class ENotification9Controller extends State<ENotification9View>
    implements MvcController {
  static late ENotification9Controller instance;
  late ENotification9View view;

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
