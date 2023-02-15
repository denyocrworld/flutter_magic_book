import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard4_view.dart';

class EDashboard4Controller extends State<EDashboard4View>
    implements MvcController {
  static late EDashboard4Controller instance;
  late EDashboard4View view;

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
