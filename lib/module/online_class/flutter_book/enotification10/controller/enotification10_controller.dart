import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification10_view.dart';

class ENotification10Controller extends State<ENotification10View>
    implements MvcController {
  static late ENotification10Controller instance;
  late ENotification10View view;

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
