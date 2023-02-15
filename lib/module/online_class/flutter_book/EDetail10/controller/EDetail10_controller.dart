import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edetail10_view.dart';

class EDetail10Controller extends State<EDetail10View>
    implements MvcController {
  static late EDetail10Controller instance;
  late EDetail10View view;

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
