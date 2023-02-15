import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory8_controller.dart';

class ECategory8View extends StatefulWidget {
  const ECategory8View({Key? key}) : super(key: key);

  Widget build(context, ECategory8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory8"),
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
  State<ECategory8View> createState() => ECategory8Controller();
}
