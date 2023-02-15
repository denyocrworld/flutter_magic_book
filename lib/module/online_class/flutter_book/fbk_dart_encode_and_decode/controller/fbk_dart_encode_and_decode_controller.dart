import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_encode_and_decode_view.dart';

class FbkDartEncodeAndDecodeController extends State<FbkDartEncodeAndDecodeView>
    implements MvcController {
  static late FbkDartEncodeAndDecodeController instance;
  late FbkDartEncodeAndDecodeView view;

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
