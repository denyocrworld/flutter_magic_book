import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_signup2_controller.dart';

class ExlSignup2View extends StatefulWidget {
  const ExlSignup2View({Key? key}) : super(key: key);

  Widget build(context, ExlSignup2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExlSignup2"),
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
  State<ExlSignup2View> createState() => ExlSignup2Controller();
}
