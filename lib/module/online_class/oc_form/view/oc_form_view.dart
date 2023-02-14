import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_form_controller.dart';

class OcFormView extends StatefulWidget {
  const OcFormView({Key? key}) : super(key: key);

  Widget build(context, OcFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcForm"),
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
  State<OcFormView> createState() => OcFormController();
}
