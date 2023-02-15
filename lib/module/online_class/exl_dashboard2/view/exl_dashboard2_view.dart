import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_dashboard2_controller.dart';

class ExlDashboard2View extends StatefulWidget {
  const ExlDashboard2View({Key? key}) : super(key: key);

  Widget build(context, ExlDashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExlDashboard2"),
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
  State<ExlDashboard2View> createState() => ExlDashboard2Controller();
}
