import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ecategory5_view.dart';

class ECategory5Controller extends State<ECategory5View>
    implements MvcController {
  static late ECategory5Controller instance;
  late ECategory5View view;

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
