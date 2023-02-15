import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_login2_controller.dart';

class ExlLogin2View extends StatefulWidget {
  const ExlLogin2View({Key? key}) : super(key: key);

  Widget build(context, ExlLogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExlLogin2"),
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
  State<ExlLogin2View> createState() => ExlLogin2Controller();
}
