import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oce_dart_basic_controller.dart';

class OceDartBasicView extends StatefulWidget {
  const OceDartBasicView({Key? key}) : super(key: key);

  Widget build(context, OceDartBasicController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceDartBasic"),
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
  State<OceDartBasicView> createState() => OceDartBasicController();
}
