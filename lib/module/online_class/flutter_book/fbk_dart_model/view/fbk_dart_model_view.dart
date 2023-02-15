import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_model_controller.dart';

class FbkDartModelView extends StatefulWidget {
  const FbkDartModelView({Key? key}) : super(key: key);

  Widget build(context, FbkDartModelController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartModel"),
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
  State<FbkDartModelView> createState() => FbkDartModelController();
}
