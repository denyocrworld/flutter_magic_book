import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist10_controller.dart';

class EList10View extends StatefulWidget {
  const EList10View({Key? key}) : super(key: key);

  Widget build(context, EList10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList10"),
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
  State<EList10View> createState() => EList10Controller();
}
