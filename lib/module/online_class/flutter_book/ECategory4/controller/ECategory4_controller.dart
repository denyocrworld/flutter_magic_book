import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory4_view.dart';

class ECategory4Controller extends State<ECategory4View>
    implements MvcController {
  static late ECategory4Controller instance;
  late ECategory4View view;

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
