import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_fade_animation_view.dart';

class SmFadeAnimationController extends State<SmFadeAnimationView>
    implements MvcController {
  static late SmFadeAnimationController instance;
  late SmFadeAnimationView view;

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
