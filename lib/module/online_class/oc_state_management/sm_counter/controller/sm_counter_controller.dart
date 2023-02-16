import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_counter_view.dart';

class SmCounterController extends State<SmCounterView>
    implements MvcController {
  static late SmCounterController instance;
  late SmCounterView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int counter = 0;
  String name = "";

  updateCounter() {
    counter++;
    setState(() {});
  }

  updateName() {
    name = "Deny ${Random().nextInt(1000)}";
    setState(() {});
  }
}

/*
State Management => Aplikasi Kecil atau Aplikasi Besar

Architecture
Scalable
Mudah di maintain
Mudah di test
*/
