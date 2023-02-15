import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory7_view.dart';

class ECategory7Controller extends State<ECategory7View>
    implements MvcController {
  static late ECategory7Controller instance;
  late ECategory7View view;

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
