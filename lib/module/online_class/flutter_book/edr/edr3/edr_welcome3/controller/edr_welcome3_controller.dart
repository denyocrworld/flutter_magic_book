import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_welcome3_view.dart';

class EdrWelcome3Controller extends State<EdrWelcome3View>
    implements MvcController {
  static late EdrWelcome3Controller instance;
  late EdrWelcome3View view;

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
