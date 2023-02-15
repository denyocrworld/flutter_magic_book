import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat3_controller.dart';

class EChat3View extends StatefulWidget {
  const EChat3View({Key? key}) : super(key: key);

  Widget build(context, EChat3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat3"),
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
  State<EChat3View> createState() => EChat3Controller();
}
