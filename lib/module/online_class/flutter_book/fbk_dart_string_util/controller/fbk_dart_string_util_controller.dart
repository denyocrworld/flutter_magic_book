import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_string_util_view.dart';

class FbkDartStringUtilController extends State<FbkDartStringUtilView>
    implements MvcController {
  static late FbkDartStringUtilController instance;
  late FbkDartStringUtilView view;

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
