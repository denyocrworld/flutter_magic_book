import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail6_controller.dart';

class EDetail6View extends StatefulWidget {
  const EDetail6View({Key? key}) : super(key: key);

  Widget build(context, EDetail6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail6"),
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
  State<EDetail6View> createState() => EDetail6Controller();
}
