import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup1_controller.dart';

class ESignup1View extends StatefulWidget {
  const ESignup1View({Key? key}) : super(key: key);

  Widget build(context, ESignup1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup1"),
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
  State<ESignup1View> createState() => ESignup1Controller();
}
