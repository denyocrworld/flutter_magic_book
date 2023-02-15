import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory3_controller.dart';

class ECategory3View extends StatefulWidget {
  const ECategory3View({Key? key}) : super(key: key);

  Widget build(context, ECategory3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory3"),
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
  State<ECategory3View> createState() => ECategory3Controller();
}
