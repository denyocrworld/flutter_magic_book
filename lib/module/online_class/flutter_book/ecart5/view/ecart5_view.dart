import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart5_controller.dart';

class ECart5View extends StatefulWidget {
  const ECart5View({Key? key}) : super(key: key);

  Widget build(context, ECart5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart5"),
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
  State<ECart5View> createState() => ECart5Controller();
}
