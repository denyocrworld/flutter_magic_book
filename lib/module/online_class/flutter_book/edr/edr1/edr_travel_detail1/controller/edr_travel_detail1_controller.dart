import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_travel_detail1_view.dart';

class EdrTravelDetail1Controller extends State<EdrTravelDetail1View>
    implements MvcController {
  static late EdrTravelDetail1Controller instance;
  late EdrTravelDetail1View view;

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
