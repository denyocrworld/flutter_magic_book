import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_loading_view.dart';

class SmLoadingController extends State<SmLoadingView>
    implements MvcController {
  static late SmLoadingController instance;
  late SmLoadingView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool loading = false;
  updateLoadingState() {
    // if (loading == true) {
    //   loading = false;
    // } else {
    //   loading = true;
    // }

    // loading = loading ? false : true;

    loading = !loading;
    setState(() {});
  }
}
