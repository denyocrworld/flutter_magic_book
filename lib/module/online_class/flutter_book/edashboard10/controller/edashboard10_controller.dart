import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard10_view.dart';

class EDashboard10Controller extends State<EDashboard10View>
    implements MvcController {
  static late EDashboard10Controller instance;
  late EDashboard10View view;

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
