import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin10_controller.dart';

class ELogin10View extends StatefulWidget {
  const ELogin10View({Key? key}) : super(key: key);

  Widget build(context, ELogin10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin10"),
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
  State<ELogin10View> createState() => ELogin10Controller();
}
