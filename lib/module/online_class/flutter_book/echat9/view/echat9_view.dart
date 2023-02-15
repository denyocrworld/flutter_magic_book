import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat9_controller.dart';

class EChat9View extends StatefulWidget {
  const EChat9View({Key? key}) : super(key: key);

  Widget build(context, EChat9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat9"),
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
  State<EChat9View> createState() => EChat9Controller();
}
