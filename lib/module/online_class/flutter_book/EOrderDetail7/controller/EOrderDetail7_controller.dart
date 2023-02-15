import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail7_view.dart';

class EOrderDetail7Controller extends State<EOrderDetail7View>
    implements MvcController {
  static late EOrderDetail7Controller instance;
  late EOrderDetail7View view;

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
