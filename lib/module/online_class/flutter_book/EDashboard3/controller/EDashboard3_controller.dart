import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edashboard3_view.dart';

class EDashboard3Controller extends State<EDashboard3View>
    implements MvcController {
  static late EDashboard3Controller instance;
  late EDashboard3View view;

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
