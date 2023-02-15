import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard5_view.dart';

class EDashboard5Controller extends State<EDashboard5View>
    implements MvcController {
  static late EDashboard5Controller instance;
  late EDashboard5View view;

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
