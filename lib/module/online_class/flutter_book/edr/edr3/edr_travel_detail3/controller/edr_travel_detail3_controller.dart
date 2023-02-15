import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_travel_detail3_view.dart';

class EdrTravelDetail3Controller extends State<EdrTravelDetail3View>
    implements MvcController {
  static late EdrTravelDetail3Controller instance;
  late EdrTravelDetail3View view;

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
