import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart1_controller.dart';

class ECart1View extends StatefulWidget {
  const ECart1View({Key? key}) : super(key: key);

  Widget build(context, ECart1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart1"),
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
  State<ECart1View> createState() => ECart1Controller();
}
