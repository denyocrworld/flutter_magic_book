import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup3_controller.dart';

class ESignup3View extends StatefulWidget {
  const ESignup3View({Key? key}) : super(key: key);

  Widget build(context, ESignup3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup3"),
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
  State<ESignup3View> createState() => ESignup3Controller();
}
