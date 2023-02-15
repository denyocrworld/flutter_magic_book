import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification2_view.dart';

class ENotification2Controller extends State<ENotification2View>
    implements MvcController {
  static late ENotification2Controller instance;
  late ENotification2View view;

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
