import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile3_view.dart';

class EProfile3Controller extends State<EProfile3View>
    implements MvcController {
  static late EProfile3Controller instance;
  late EProfile3View view;

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
