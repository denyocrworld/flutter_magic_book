import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail2_controller.dart';

class EDetail2View extends StatefulWidget {
  const EDetail2View({Key? key}) : super(key: key);

  Widget build(context, EDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail2"),
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
  State<EDetail2View> createState() => EDetail2Controller();
}
