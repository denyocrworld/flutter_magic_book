import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_scale_animation_view.dart';

class SmScaleAnimationController extends State<SmScaleAnimationView>
    implements MvcController {
  static late SmScaleAnimationController instance;
  late SmScaleAnimationView view;

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
