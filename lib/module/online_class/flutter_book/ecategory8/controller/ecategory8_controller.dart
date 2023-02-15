import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory8_view.dart';

class ECategory8Controller extends State<ECategory8View>
    implements MvcController {
  static late ECategory8Controller instance;
  late ECategory8View view;

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
