import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin9_controller.dart';

class ELogin9View extends StatefulWidget {
  const ELogin9View({Key? key}) : super(key: key);

  Widget build(context, ELogin9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin9"),
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
  State<ELogin9View> createState() => ELogin9Controller();
}
