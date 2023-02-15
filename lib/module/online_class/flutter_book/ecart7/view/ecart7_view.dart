import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart7_controller.dart';

class ECart7View extends StatefulWidget {
  const ECart7View({Key? key}) : super(key: key);

  Widget build(context, ECart7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart7"),
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
  State<ECart7View> createState() => ECart7Controller();
}
