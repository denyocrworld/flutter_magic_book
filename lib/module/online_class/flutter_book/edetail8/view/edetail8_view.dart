import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail8_controller.dart';

class EDetail8View extends StatefulWidget {
  const EDetail8View({Key? key}) : super(key: key);

  Widget build(context, EDetail8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail8"),
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
  State<EDetail8View> createState() => EDetail8Controller();
}
