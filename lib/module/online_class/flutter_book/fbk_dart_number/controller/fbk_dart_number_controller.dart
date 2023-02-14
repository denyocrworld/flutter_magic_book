import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_number_view.dart';

class FbkDartNumberController extends State<FbkDartNumberView>
    implements MvcController {
  static late FbkDartNumberController instance;
  late FbkDartNumberView view;

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
