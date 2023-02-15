import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist8_controller.dart';

class EList8View extends StatefulWidget {
  const EList8View({Key? key}) : super(key: key);

  Widget build(context, EList8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList8"),
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
  State<EList8View> createState() => EList8Controller();
}
