import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory2_controller.dart';

class ECategory2View extends StatefulWidget {
  const ECategory2View({Key? key}) : super(key: key);

  Widget build(context, ECategory2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory2"),
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
  State<ECategory2View> createState() => ECategory2Controller();
}
