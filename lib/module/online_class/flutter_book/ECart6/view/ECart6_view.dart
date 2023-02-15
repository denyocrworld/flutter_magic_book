import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecart6_controller.dart';

class ECart6View extends StatefulWidget {
  const ECart6View({Key? key}) : super(key: key);

  Widget build(context, ECart6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECart6"),
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
  State<ECart6View> createState() => ECart6Controller();
}
