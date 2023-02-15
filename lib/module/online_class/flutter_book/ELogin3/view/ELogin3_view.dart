import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin3_controller.dart';

class ELogin3View extends StatefulWidget {
  const ELogin3View({Key? key}) : super(key: key);

  Widget build(context, ELogin3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin3"),
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
  State<ELogin3View> createState() => ELogin3Controller();
}
