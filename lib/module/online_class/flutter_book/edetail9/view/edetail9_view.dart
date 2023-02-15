import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail9_controller.dart';

class EDetail9View extends StatefulWidget {
  const EDetail9View({Key? key}) : super(key: key);

  Widget build(context, EDetail9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail9"),
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
  State<EDetail9View> createState() => EDetail9Controller();
}
