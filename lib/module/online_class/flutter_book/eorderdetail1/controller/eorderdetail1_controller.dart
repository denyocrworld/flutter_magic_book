import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail1_view.dart';

class EOrderDetail1Controller extends State<EOrderDetail1View>
    implements MvcController {
  static late EOrderDetail1Controller instance;
  late EOrderDetail1View view;

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
