import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard8_view.dart';

class EDashboard8Controller extends State<EDashboard8View>
    implements MvcController {
  static late EDashboard8Controller instance;
  late EDashboard8View view;

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
