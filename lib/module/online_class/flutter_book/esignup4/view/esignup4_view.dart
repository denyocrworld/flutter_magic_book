import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup4_controller.dart';

class ESignup4View extends StatefulWidget {
  const ESignup4View({Key? key}) : super(key: key);

  Widget build(context, ESignup4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup4"),
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
  State<ESignup4View> createState() => ESignup4Controller();
}
