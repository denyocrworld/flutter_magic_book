import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail7_controller.dart';

class EDetail7View extends StatefulWidget {
  const EDetail7View({Key? key}) : super(key: key);

  Widget build(context, EDetail7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail7"),
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
  State<EDetail7View> createState() => EDetail7Controller();
}
