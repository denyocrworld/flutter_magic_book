import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat8_controller.dart';

class EChat8View extends StatefulWidget {
  const EChat8View({Key? key}) : super(key: key);

  Widget build(context, EChat8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat8"),
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
  State<EChat8View> createState() => EChat8Controller();
}
