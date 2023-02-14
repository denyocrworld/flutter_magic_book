import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_dashboard_controller.dart';

class OcDashboardView extends StatefulWidget {
  const OcDashboardView({Key? key}) : super(key: key);

  Widget build(context, OcDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcDashboard"),
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
  State<OcDashboardView> createState() => OcDashboardController();
}
