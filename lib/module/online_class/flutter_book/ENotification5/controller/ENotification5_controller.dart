import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification5_view.dart';

class ENotification5Controller extends State<ENotification5View>
    implements MvcController {
  static late ENotification5Controller instance;
  late ENotification5View view;

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
