import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_if_statement_view.dart';

class FbkDartIfStatementController extends State<FbkDartIfStatementView>
    implements MvcController {
  static late FbkDartIfStatementController instance;
  late FbkDartIfStatementView view;

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
