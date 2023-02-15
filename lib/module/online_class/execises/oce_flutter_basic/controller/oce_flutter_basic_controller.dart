import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oce_flutter_basic_view.dart';

class OceFlutterBasicController extends State<OceFlutterBasicView>
    implements MvcController {
  static late OceFlutterBasicController instance;
  late OceFlutterBasicView view;

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
