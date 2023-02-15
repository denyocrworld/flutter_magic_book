import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard1_controller.dart';

class EdrDashboard1View extends StatefulWidget {
  const EdrDashboard1View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard1"),
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
  State<EdrDashboard1View> createState() => EdrDashboard1Controller();
}
