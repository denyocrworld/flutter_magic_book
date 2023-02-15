import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail4_view.dart';

class EOrderDetail4Controller extends State<EOrderDetail4View>
    implements MvcController {
  static late EOrderDetail4Controller instance;
  late EOrderDetail4View view;

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
