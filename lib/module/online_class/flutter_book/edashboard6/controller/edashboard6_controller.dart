import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard6_view.dart';

class EDashboard6Controller extends State<EDashboard6View>
    implements MvcController {
  static late EDashboard6Controller instance;
  late EDashboard6View view;

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
