import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_rotate_animation_view.dart';

class SmRotateAnimationController extends State<SmRotateAnimationView>
    implements MvcController {
  static late SmRotateAnimationController instance;
  late SmRotateAnimationView view;

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
