import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_customer_dashboard_view.dart';

class FdCustomerDashboardController extends State<FdCustomerDashboardView>
    implements MvcController {
  static late FdCustomerDashboardController instance;
  late FdCustomerDashboardView view;

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
