import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_datetime_view.dart';

class FbkDartDatetimeController extends State<FbkDartDatetimeView>
    implements MvcController {
  static late FbkDartDatetimeController instance;
  late FbkDartDatetimeView view;

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
