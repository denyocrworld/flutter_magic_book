import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_visibility_view.dart';

class SmVisibilityController extends State<SmVisibilityView>
    implements MvcController {
  static late SmVisibilityController instance;
  late SmVisibilityView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool visible = false;

  updateVisibility() {
    visible = !visible;
    setState(() {});
  }
}
