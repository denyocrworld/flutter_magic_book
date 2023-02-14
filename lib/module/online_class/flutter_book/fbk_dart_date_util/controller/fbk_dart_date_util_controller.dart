import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_date_util_view.dart';

class FbkDartDateUtilController extends State<FbkDartDateUtilView>
    implements MvcController {
  static late FbkDartDateUtilController instance;
  late FbkDartDateUtilView view;

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
