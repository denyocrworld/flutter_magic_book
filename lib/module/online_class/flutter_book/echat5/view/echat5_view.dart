import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat5_controller.dart';

class EChat5View extends StatefulWidget {
  const EChat5View({Key? key}) : super(key: key);

  Widget build(context, EChat5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat5"),
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
  State<EChat5View> createState() => EChat5Controller();
}
