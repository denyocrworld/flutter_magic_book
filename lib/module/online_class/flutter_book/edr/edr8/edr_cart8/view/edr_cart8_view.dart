import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_cart8_controller.dart';

class EdrCart8View extends StatefulWidget {
  const EdrCart8View({Key? key}) : super(key: key);

  Widget build(context, EdrCart8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrCart8"),
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
  State<EdrCart8View> createState() => EdrCart8Controller();
}
