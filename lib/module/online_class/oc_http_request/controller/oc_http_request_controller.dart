import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_http_request_view.dart';

class OcHttpRequestController extends State<OcHttpRequestView>
    implements MvcController {
  static late OcHttpRequestController instance;
  late OcHttpRequestView view;

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
