import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oce_flutter_certification_view.dart';

class OceFlutterCertificationController
    extends State<OceFlutterCertificationView> implements MvcController {
  static late OceFlutterCertificationController instance;
  late OceFlutterCertificationView view;

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
