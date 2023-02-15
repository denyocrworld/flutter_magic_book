import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard9_controller.dart';

class EdrDashboard9View extends StatefulWidget {
  const EdrDashboard9View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard9"),
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
  State<EdrDashboard9View> createState() => EdrDashboard9Controller();
}
