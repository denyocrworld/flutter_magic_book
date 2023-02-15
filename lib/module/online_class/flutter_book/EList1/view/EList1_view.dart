import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist1_controller.dart';

class EList1View extends StatefulWidget {
  const EList1View({Key? key}) : super(key: key);

  Widget build(context, EList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList1"),
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
  State<EList1View> createState() => EList1Controller();
}
