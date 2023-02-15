import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oce_flutter_basic_controller.dart';

class OceFlutterBasicView extends StatefulWidget {
  const OceFlutterBasicView({Key? key}) : super(key: key);

  Widget build(context, OceFlutterBasicController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceFlutterBasic"),
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
  State<OceFlutterBasicView> createState() => OceFlutterBasicController();
}
