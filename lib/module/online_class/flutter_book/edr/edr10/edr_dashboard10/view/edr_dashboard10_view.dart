import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard10_controller.dart';

class EdrDashboard10View extends StatefulWidget {
  const EdrDashboard10View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard10"),
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
  State<EdrDashboard10View> createState() => EdrDashboard10Controller();
}
