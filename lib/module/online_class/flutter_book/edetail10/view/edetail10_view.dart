import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail10_controller.dart';

class EDetail10View extends StatefulWidget {
  const EDetail10View({Key? key}) : super(key: key);

  Widget build(context, EDetail10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail10"),
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
  State<EDetail10View> createState() => EDetail10Controller();
}
