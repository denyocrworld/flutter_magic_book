import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist5_controller.dart';

class EList5View extends StatefulWidget {
  const EList5View({Key? key}) : super(key: key);

  Widget build(context, EList5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList5"),
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
  State<EList5View> createState() => EList5Controller();
}
