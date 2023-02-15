import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory10_view.dart';

class ECategory10Controller extends State<ECategory10View>
    implements MvcController {
  static late ECategory10Controller instance;
  late ECategory10View view;

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
