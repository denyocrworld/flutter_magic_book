import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_string_view.dart';

class FbkDartStringController extends State<FbkDartStringView>
    implements MvcController {
  static late FbkDartStringController instance;
  late FbkDartStringView view;

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
