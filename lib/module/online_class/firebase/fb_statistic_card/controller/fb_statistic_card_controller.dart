import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_statistic_card_view.dart';

class FbStatisticCardController extends State<FbStatisticCardView>
    implements MvcController {
  static late FbStatisticCardController instance;
  late FbStatisticCardView view;

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
