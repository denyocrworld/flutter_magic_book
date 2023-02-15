import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_form_view.dart';

class OcFormController extends State<OcFormView> implements MvcController {
  static late OcFormController instance;
  late OcFormView view;

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
