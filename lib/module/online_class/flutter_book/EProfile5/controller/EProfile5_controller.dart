import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile5_view.dart';

class EProfile5Controller extends State<EProfile5View>
    implements MvcController {
  static late EProfile5Controller instance;
  late EProfile5View view;

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
