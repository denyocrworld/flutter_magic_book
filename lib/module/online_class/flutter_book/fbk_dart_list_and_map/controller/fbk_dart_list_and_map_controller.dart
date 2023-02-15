import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_dart_list_and_map_view.dart';

class FbkDartListAndMapController extends State<FbkDartListAndMapView>
    implements MvcController {
  static late FbkDartListAndMapController instance;
  late FbkDartListAndMapView view;

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
