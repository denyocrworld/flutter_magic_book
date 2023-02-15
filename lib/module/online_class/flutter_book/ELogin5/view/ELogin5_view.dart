import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin5_controller.dart';

class ELogin5View extends StatefulWidget {
  const ELogin5View({Key? key}) : super(key: key);

  Widget build(context, ELogin5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin5"),
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
  State<ELogin5View> createState() => ELogin5Controller();
}
