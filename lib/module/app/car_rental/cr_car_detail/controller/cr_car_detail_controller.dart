import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cr_car_detail_view.dart';

class CrCarDetailController extends State<CrCarDetailView>
    implements MvcController {
  static late CrCarDetailController instance;
  late CrCarDetailView view;

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
