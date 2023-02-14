import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/sm_digital_clock_view.dart';

class SmDigitalClockController extends State<SmDigitalClockView>
    implements MvcController {
  static late SmDigitalClockController instance;
  late SmDigitalClockView view;

  late Timer timer;
  @override
  void initState() {
    instance = this;
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  DateTime date = DateTime.now();
  startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      date = DateTime.now();
      setState(() {});
    });
  }
}
