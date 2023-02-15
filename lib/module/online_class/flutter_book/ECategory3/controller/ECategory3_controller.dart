import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory3_view.dart';

class ECategory3Controller extends State<ECategory3View>
    implements MvcController {
  static late ECategory3Controller instance;
  late ECategory3View view;

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
