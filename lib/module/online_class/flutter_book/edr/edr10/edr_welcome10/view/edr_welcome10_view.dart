import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_welcome10_controller.dart';

class EdrWelcome10View extends StatefulWidget {
  const EdrWelcome10View({Key? key}) : super(key: key);

  Widget build(context, EdrWelcome10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrWelcome10"),
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
  State<EdrWelcome10View> createState() => EdrWelcome10Controller();
}
