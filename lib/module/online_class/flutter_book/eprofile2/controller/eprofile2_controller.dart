import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eprofile2_view.dart';

class EProfile2Controller extends State<EProfile2View>
    implements MvcController {
  static late EProfile2Controller instance;
  late EProfile2View view;

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
