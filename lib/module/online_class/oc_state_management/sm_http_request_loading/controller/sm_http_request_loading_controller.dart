import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_http_request_loading_view.dart';

class SmHttpRequestLoadingController extends State<SmHttpRequestLoadingView>
    implements MvcController {
  static late SmHttpRequestLoadingController instance;
  late SmHttpRequestLoadingView view;

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
