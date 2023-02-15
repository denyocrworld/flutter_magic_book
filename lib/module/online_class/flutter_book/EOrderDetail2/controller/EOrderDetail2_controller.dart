import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail2_view.dart';

class EOrderDetail2Controller extends State<EOrderDetail2View>
    implements MvcController {
  static late EOrderDetail2Controller instance;
  late EOrderDetail2View view;

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
