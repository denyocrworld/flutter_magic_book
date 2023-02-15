import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory1_controller.dart';

class ECategory1View extends StatefulWidget {
  const ECategory1View({Key? key}) : super(key: key);

  Widget build(context, ECategory1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory1"),
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
  State<ECategory1View> createState() => ECategory1Controller();
}
