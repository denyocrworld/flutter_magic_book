import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/echat6_controller.dart';

class EChat6View extends StatefulWidget {
  const EChat6View({Key? key}) : super(key: key);

  Widget build(context, EChat6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EChat6"),
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
  State<EChat6View> createState() => EChat6Controller();
}
