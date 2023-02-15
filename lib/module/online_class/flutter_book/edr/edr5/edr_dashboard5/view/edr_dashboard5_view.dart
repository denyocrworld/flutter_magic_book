import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard5_controller.dart';

class EdrDashboard5View extends StatefulWidget {
  const EdrDashboard5View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard5"),
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
  State<EdrDashboard5View> createState() => EdrDashboard5Controller();
}
