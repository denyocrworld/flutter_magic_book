import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_signup1_controller.dart';

class ExlSignup1View extends StatefulWidget {
  const ExlSignup1View({Key? key}) : super(key: key);

  Widget build(context, ExlSignup1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExlSignup1"),
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
  State<ExlSignup1View> createState() => ExlSignup1Controller();
}
