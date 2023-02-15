import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail6_view.dart';

class EOrderDetail6Controller extends State<EOrderDetail6View>
    implements MvcController {
  static late EOrderDetail6Controller instance;
  late EOrderDetail6View view;

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
