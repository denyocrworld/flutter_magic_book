import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard4_controller.dart';

class EdrDashboard4View extends StatefulWidget {
  const EdrDashboard4View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard4"),
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
  State<EdrDashboard4View> createState() => EdrDashboard4Controller();
}
