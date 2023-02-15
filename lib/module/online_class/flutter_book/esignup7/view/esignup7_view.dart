import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/esignup7_controller.dart';

class ESignup7View extends StatefulWidget {
  const ESignup7View({Key? key}) : super(key: key);

  Widget build(context, ESignup7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup7"),
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
  State<ESignup7View> createState() => ESignup7Controller();
}
