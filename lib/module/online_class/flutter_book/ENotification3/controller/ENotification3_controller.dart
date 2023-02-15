import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/enotification3_view.dart';

class ENotification3Controller extends State<ENotification3View>
    implements MvcController {
  static late ENotification3Controller instance;
  late ENotification3View view;

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
