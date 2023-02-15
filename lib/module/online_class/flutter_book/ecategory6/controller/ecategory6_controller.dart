import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory6_view.dart';

class ECategory6Controller extends State<ECategory6View>
    implements MvcController {
  static late ECategory6Controller instance;
  late ECategory6View view;

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
