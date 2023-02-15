import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart4_controller.dart';

class ECart4View extends StatefulWidget {
  const ECart4View({Key? key}) : super(key: key);

  Widget build(context, ECart4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart4"),
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
  State<ECart4View> createState() => ECart4Controller();
}
