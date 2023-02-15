import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard6_controller.dart';

class EdrDashboard6View extends StatefulWidget {
  const EdrDashboard6View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard6"),
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
  State<EdrDashboard6View> createState() => EdrDashboard6Controller();
}
