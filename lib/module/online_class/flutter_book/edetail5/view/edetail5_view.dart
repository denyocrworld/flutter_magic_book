import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail5_controller.dart';

class EDetail5View extends StatefulWidget {
  const EDetail5View({Key? key}) : super(key: key);

  Widget build(context, EDetail5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail5"),
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
  State<EDetail5View> createState() => EDetail5Controller();
}
