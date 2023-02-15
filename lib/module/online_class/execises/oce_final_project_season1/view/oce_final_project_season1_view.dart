import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oce_final_project_season1_controller.dart';

class OceFinalProjectSeason1View extends StatefulWidget {
  const OceFinalProjectSeason1View({Key? key}) : super(key: key);

  Widget build(context, OceFinalProjectSeason1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceFinalProjectSeason1"),
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
  State<OceFinalProjectSeason1View> createState() =>
      OceFinalProjectSeason1Controller();
}
