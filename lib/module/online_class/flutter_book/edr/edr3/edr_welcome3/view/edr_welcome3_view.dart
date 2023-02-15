import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_welcome3_controller.dart';

class EdrWelcome3View extends StatefulWidget {
  const EdrWelcome3View({Key? key}) : super(key: key);

  Widget build(context, EdrWelcome3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrWelcome3"),
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
  State<EdrWelcome3View> createState() => EdrWelcome3Controller();
}
