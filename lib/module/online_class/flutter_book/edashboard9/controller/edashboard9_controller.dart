import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard9_view.dart';

class EDashboard9Controller extends State<EDashboard9View>
    implements MvcController {
  static late EDashboard9Controller instance;
  late EDashboard9View view;

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
