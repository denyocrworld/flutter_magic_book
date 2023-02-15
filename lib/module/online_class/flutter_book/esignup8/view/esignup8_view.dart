import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup8_controller.dart';

class ESignup8View extends StatefulWidget {
  const ESignup8View({Key? key}) : super(key: key);

  Widget build(context, ESignup8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup8"),
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
  State<ESignup8View> createState() => ESignup8Controller();
}
