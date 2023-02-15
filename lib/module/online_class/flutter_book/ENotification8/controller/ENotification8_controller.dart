import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification8_view.dart';

class ENotification8Controller extends State<ENotification8View>
    implements MvcController {
  static late ENotification8Controller instance;
  late ENotification8View view;

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
