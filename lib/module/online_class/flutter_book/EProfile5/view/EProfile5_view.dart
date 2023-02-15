import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile5_controller.dart';

class EProfile5View extends StatefulWidget {
  const EProfile5View({Key? key}) : super(key: key);

  Widget build(context, EProfile5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile5"),
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
  State<EProfile5View> createState() => EProfile5Controller();
}
