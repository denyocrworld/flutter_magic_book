import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oce_dart_basic_view.dart';

class OceDartBasicController extends State<OceDartBasicView>
    implements MvcController {
  static late OceDartBasicController instance;
  late OceDartBasicView view;

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
