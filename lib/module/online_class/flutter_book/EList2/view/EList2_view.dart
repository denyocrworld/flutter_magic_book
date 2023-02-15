import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist2_controller.dart';

class EList2View extends StatefulWidget {
  const EList2View({Key? key}) : super(key: key);

  Widget build(context, EList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList2"),
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
  State<EList2View> createState() => EList2Controller();
}
