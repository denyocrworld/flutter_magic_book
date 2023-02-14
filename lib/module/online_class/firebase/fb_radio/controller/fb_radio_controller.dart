import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_radio_view.dart';

class FbRadioController extends State<FbRadioView> implements MvcController {
  static late FbRadioController instance;
  late FbRadioView view;

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
