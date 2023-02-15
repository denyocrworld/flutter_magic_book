import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail5_view.dart';

class EOrderDetail5Controller extends State<EOrderDetail5View>
    implements MvcController {
  static late EOrderDetail5Controller instance;
  late EOrderDetail5View view;

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
