import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin4_controller.dart';

class ELogin4View extends StatefulWidget {
  const ELogin4View({Key? key}) : super(key: key);

  Widget build(context, ELogin4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin4"),
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
  State<ELogin4View> createState() => ELogin4Controller();
}
