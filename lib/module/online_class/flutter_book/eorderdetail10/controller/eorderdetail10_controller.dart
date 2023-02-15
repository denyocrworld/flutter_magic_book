import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eorderdetail10_view.dart';

class EOrderDetail10Controller extends State<EOrderDetail10View>
    implements MvcController {
  static late EOrderDetail10Controller instance;
  late EOrderDetail10View view;

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
