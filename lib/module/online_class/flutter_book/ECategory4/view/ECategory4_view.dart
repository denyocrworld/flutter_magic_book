import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory4_controller.dart';

class ECategory4View extends StatefulWidget {
  const ECategory4View({Key? key}) : super(key: key);

  Widget build(context, ECategory4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory4"),
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
  State<ECategory4View> createState() => ECategory4Controller();
}
