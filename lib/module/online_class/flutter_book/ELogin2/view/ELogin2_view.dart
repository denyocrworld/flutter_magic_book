import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin2_controller.dart';

class ELogin2View extends StatefulWidget {
  const ELogin2View({Key? key}) : super(key: key);

  Widget build(context, ELogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin2View> createState() => ELogin2Controller();
}
