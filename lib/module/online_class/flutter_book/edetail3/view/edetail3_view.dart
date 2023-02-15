import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail3_controller.dart';

class EDetail3View extends StatefulWidget {
  const EDetail3View({Key? key}) : super(key: key);

  Widget build(context, EDetail3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail3"),
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
  State<EDetail3View> createState() => EDetail3Controller();
}
