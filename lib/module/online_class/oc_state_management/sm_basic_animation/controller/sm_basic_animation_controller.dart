import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_basic_animation_view.dart';

class SmBasicAnimationController extends State<SmBasicAnimationView>
    implements MvcController {
  static late SmBasicAnimationController instance;
  late SmBasicAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool animated = false;
  updateState() {
    animated = !animated;
    setState(() {});
  }
}
