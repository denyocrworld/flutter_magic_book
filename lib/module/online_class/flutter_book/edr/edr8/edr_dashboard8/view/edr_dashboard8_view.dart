import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard8_controller.dart';

class EdrDashboard8View extends StatefulWidget {
  const EdrDashboard8View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard8"),
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
  State<EdrDashboard8View> createState() => EdrDashboard8Controller();
}
