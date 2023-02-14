import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oce_dart_certification_view.dart';

class OceDartCertificationController extends State<OceDartCertificationView>
    implements MvcController {
  static late OceDartCertificationController instance;
  late OceDartCertificationView view;

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
