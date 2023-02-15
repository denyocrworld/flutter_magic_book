import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail8_view.dart';

class EOrderDetail8Controller extends State<EOrderDetail8View>
    implements MvcController {
  static late EOrderDetail8Controller instance;
  late EOrderDetail8View view;

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
