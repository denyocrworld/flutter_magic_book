import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory10_controller.dart';

class ECategory10View extends StatefulWidget {
  const ECategory10View({Key? key}) : super(key: key);

  Widget build(context, ECategory10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory10"),
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
  State<ECategory10View> createState() => ECategory10Controller();
}
