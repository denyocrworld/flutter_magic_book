import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail3_view.dart';

class EOrderDetail3Controller extends State<EOrderDetail3View>
    implements MvcController {
  static late EOrderDetail3Controller instance;
  late EOrderDetail3View view;

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
