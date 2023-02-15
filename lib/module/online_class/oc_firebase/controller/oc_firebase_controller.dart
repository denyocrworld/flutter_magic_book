import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_firebase_view.dart';

class OcFirebaseController extends State<OcFirebaseView>
    implements MvcController {
  static late OcFirebaseController instance;
  late OcFirebaseView view;

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
