import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat2_controller.dart';

class EChat2View extends StatefulWidget {
  const EChat2View({Key? key}) : super(key: key);

  Widget build(context, EChat2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat2"),
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
  State<EChat2View> createState() => EChat2Controller();
}
