import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup6_controller.dart';

class ESignup6View extends StatefulWidget {
  const ESignup6View({Key? key}) : super(key: key);

  Widget build(context, ESignup6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup6"),
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
  State<ESignup6View> createState() => ESignup6Controller();
}
