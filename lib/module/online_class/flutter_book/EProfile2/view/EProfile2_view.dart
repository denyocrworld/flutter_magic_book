import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile2_controller.dart';

class EProfile2View extends StatefulWidget {
  const EProfile2View({Key? key}) : super(key: key);

  Widget build(context, EProfile2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile2"),
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
  State<EProfile2View> createState() => EProfile2Controller();
}
