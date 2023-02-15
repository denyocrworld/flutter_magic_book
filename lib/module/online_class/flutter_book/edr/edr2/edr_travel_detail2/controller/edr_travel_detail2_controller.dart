import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_travel_detail2_view.dart';

class EdrTravelDetail2Controller extends State<EdrTravelDetail2View>
    implements MvcController {
  static late EdrTravelDetail2Controller instance;
  late EdrTravelDetail2View view;

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
