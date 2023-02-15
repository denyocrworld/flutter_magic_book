import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_dropdown_view.dart';

class FbDropdownController extends State<FbDropdownView>
    implements MvcController {
  static late FbDropdownController instance;
  late FbDropdownView view;

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
