import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile1_view.dart';

class EProfile1Controller extends State<EProfile1View>
    implements MvcController {
  static late EProfile1Controller instance;
  late EProfile1View view;

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
