import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard7_view.dart';

class EDashboard7Controller extends State<EDashboard7View>
    implements MvcController {
  static late EDashboard7Controller instance;
  late EDashboard7View view;

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
