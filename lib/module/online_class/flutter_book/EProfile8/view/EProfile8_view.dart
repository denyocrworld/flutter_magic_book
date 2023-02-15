import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile8_controller.dart';

class EProfile8View extends StatefulWidget {
  const EProfile8View({Key? key}) : super(key: key);

  Widget build(context, EProfile8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile8"),
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
  State<EProfile8View> createState() => EProfile8Controller();
}
