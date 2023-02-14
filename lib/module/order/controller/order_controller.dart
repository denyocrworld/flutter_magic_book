import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/order_view.dart';

class OrderController extends State<OrderView> implements MvcController {
  static late OrderController instance;
  late OrderView view;

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
