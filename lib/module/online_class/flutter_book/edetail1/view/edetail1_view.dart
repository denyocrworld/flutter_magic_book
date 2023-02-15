import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail1_controller.dart';

class EDetail1View extends StatefulWidget {
  const EDetail1View({Key? key}) : super(key: key);

  Widget build(context, EDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail1"),
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
  State<EDetail1View> createState() => EDetail1Controller();
}
