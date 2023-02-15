import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat4_controller.dart';

class EChat4View extends StatefulWidget {
  const EChat4View({Key? key}) : super(key: key);

  Widget build(context, EChat4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat4"),
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
  State<EChat4View> createState() => EChat4Controller();
}
