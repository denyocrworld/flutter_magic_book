import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_string_util_controller.dart';

class FbkDartStringUtilView extends StatefulWidget {
  const FbkDartStringUtilView({Key? key}) : super(key: key);

  Widget build(context, FbkDartStringUtilController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartStringUtil"),
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
  State<FbkDartStringUtilView> createState() => FbkDartStringUtilController();
}
