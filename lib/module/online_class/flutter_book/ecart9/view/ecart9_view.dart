import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart9_controller.dart';

class ECart9View extends StatefulWidget {
  const ECart9View({Key? key}) : super(key: key);

  Widget build(context, ECart9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart9"),
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
  State<ECart9View> createState() => ECart9Controller();
}
