import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist6_controller.dart';

class EList6View extends StatefulWidget {
  const EList6View({Key? key}) : super(key: key);

  Widget build(context, EList6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList6"),
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
  State<EList6View> createState() => EList6Controller();
}
