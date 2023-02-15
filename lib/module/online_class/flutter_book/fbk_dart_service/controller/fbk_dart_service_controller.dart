import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_service_view.dart';

class FbkDartServiceController extends State<FbkDartServiceView>
    implements MvcController {
  static late FbkDartServiceController instance;
  late FbkDartServiceView view;

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
