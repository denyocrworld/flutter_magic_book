import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup9_controller.dart';

class ESignup9View extends StatefulWidget {
  const ESignup9View({Key? key}) : super(key: key);

  Widget build(context, ESignup9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup9"),
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
  State<ESignup9View> createState() => ESignup9Controller();
}
