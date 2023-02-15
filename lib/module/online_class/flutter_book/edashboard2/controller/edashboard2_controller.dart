import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard2_view.dart';

class EDashboard2Controller extends State<EDashboard2View>
    implements MvcController {
  static late EDashboard2Controller instance;
  late EDashboard2View view;

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
