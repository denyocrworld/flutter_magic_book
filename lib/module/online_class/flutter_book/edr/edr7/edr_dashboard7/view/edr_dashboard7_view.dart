import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard7_controller.dart';

class EdrDashboard7View extends StatefulWidget {
  const EdrDashboard7View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard7"),
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
  State<EdrDashboard7View> createState() => EdrDashboard7Controller();
}
