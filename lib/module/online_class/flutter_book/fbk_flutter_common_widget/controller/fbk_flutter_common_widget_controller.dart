import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_flutter_common_widget_view.dart';

class FbkFlutterCommonWidgetController extends State<FbkFlutterCommonWidgetView>
    implements MvcController {
  static late FbkFlutterCommonWidgetController instance;
  late FbkFlutterCommonWidgetView view;

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
