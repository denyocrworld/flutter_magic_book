import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard1_view.dart';

class EDashboard1Controller extends State<EDashboard1View>
    implements MvcController {
  static late EDashboard1Controller instance;
  late EDashboard1View view;

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
