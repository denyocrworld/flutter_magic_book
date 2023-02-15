import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup2_controller.dart';

class ESignup2View extends StatefulWidget {
  const ESignup2View({Key? key}) : super(key: key);

  Widget build(context, ESignup2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup2"),
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
  State<ESignup2View> createState() => ESignup2Controller();
}
