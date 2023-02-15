import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile10_controller.dart';

class EProfile10View extends StatefulWidget {
  const EProfile10View({Key? key}) : super(key: key);

  Widget build(context, EProfile10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile10"),
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
  State<EProfile10View> createState() => EProfile10Controller();
}
