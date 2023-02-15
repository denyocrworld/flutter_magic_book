import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oce_flutter_certification_controller.dart';

class OceFlutterCertificationView extends StatefulWidget {
  const OceFlutterCertificationView({Key? key}) : super(key: key);

  Widget build(context, OceFlutterCertificationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceFlutterCertification"),
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
  State<OceFlutterCertificationView> createState() =>
      OceFlutterCertificationController();
}
