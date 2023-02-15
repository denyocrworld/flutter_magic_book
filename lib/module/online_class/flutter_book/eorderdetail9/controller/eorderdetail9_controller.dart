import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail9_view.dart';

class EOrderDetail9Controller extends State<EOrderDetail9View>
    implements MvcController {
  static late EOrderDetail9Controller instance;
  late EOrderDetail9View view;

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
