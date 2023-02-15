import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat10_controller.dart';

class EChat10View extends StatefulWidget {
  const EChat10View({Key? key}) : super(key: key);

  Widget build(context, EChat10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat10"),
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
  State<EChat10View> createState() => EChat10Controller();
}
