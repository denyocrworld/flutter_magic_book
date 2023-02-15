import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory5_controller.dart';

class ECategory5View extends StatefulWidget {
  const ECategory5View({Key? key}) : super(key: key);

  Widget build(context, ECategory5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory5"),
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
  State<ECategory5View> createState() => ECategory5Controller();
}
