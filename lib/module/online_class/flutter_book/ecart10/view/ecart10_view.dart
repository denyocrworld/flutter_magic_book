import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart10_controller.dart';

class ECart10View extends StatefulWidget {
  const ECart10View({Key? key}) : super(key: key);

  Widget build(context, ECart10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart10"),
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
  State<ECart10View> createState() => ECart10Controller();
}
