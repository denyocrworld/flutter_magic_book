import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin1_controller.dart';

class ELogin1View extends StatefulWidget {
  const ELogin1View({Key? key}) : super(key: key);

  Widget build(context, ELogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin1"),
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
  State<ELogin1View> createState() => ELogin1Controller();
}
