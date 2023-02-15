import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat1_controller.dart';

class EChat1View extends StatefulWidget {
  const EChat1View({Key? key}) : super(key: key);

  Widget build(context, EChat1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat1"),
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
  State<EChat1View> createState() => EChat1Controller();
}
