import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_symbol_view.dart';

class FbkDartSymbolController extends State<FbkDartSymbolView>
    implements MvcController {
  static late FbkDartSymbolController instance;
  late FbkDartSymbolView view;

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
