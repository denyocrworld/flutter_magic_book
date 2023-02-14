import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_regex_view.dart';

class FbkDartRegexController extends State<FbkDartRegexView>
    implements MvcController {
  static late FbkDartRegexController instance;
  late FbkDartRegexView view;

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
