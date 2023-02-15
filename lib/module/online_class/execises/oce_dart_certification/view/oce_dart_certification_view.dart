import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oce_dart_certification_controller.dart';

class OceDartCertificationView extends StatefulWidget {
  const OceDartCertificationView({Key? key}) : super(key: key);

  Widget build(context, OceDartCertificationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceDartCertification"),
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
  State<OceDartCertificationView> createState() =>
      OceDartCertificationController();
}
