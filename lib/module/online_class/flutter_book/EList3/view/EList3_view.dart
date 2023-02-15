import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elist3_controller.dart';

class EList3View extends StatefulWidget {
  const EList3View({Key? key}) : super(key: key);

  Widget build(context, EList3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EList3"),
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
  State<EList3View> createState() => EList3Controller();
}
