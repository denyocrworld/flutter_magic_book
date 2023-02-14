import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_variable_view.dart';

class FbkDartVariableController extends State<FbkDartVariableView>
    implements MvcController {
  static late FbkDartVariableController instance;
  late FbkDartVariableView view;

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
