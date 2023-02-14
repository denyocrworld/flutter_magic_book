import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_service_controller.dart';

class FbkDartServiceView extends StatefulWidget {
  const FbkDartServiceView({Key? key}) : super(key: key);

  Widget build(context, FbkDartServiceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartService"),
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
  State<FbkDartServiceView> createState() => FbkDartServiceController();
}
