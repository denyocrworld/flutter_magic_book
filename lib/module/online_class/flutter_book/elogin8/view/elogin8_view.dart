import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin8_controller.dart';

class ELogin8View extends StatefulWidget {
  const ELogin8View({Key? key}) : super(key: key);

  Widget build(context, ELogin8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin8"),
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
  State<ELogin8View> createState() => ELogin8Controller();
}
