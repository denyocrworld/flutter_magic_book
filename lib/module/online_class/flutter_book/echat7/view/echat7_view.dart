import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat7_controller.dart';

class EChat7View extends StatefulWidget {
  const EChat7View({Key? key}) : super(key: key);

  Widget build(context, EChat7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat7"),
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
  State<EChat7View> createState() => EChat7Controller();
}
