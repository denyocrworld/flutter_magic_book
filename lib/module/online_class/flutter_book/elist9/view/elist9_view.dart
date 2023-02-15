import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist9_controller.dart';

class EList9View extends StatefulWidget {
  const EList9View({Key? key}) : super(key: key);

  Widget build(context, EList9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList9"),
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
  State<EList9View> createState() => EList9Controller();
}
