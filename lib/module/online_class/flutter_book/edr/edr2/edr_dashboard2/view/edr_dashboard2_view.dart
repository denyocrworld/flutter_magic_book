import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard2_controller.dart';

class EdrDashboard2View extends StatefulWidget {
  const EdrDashboard2View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard2"),
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
  State<EdrDashboard2View> createState() => EdrDashboard2Controller();
}
