import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory2_view.dart';

class ECategory2Controller extends State<ECategory2View>
    implements MvcController {
  static late ECategory2Controller instance;
  late ECategory2View view;

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
