import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart8_controller.dart';

class ECart8View extends StatefulWidget {
  const ECart8View({Key? key}) : super(key: key);

  Widget build(context, ECart8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart8"),
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
  State<ECart8View> createState() => ECart8Controller();
}
