import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory1_view.dart';

class ECategory1Controller extends State<ECategory1View>
    implements MvcController {
  static late ECategory1Controller instance;
  late ECategory1View view;

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
