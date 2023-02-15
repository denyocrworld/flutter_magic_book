import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile3_controller.dart';

class EProfile3View extends StatefulWidget {
  const EProfile3View({Key? key}) : super(key: key);

  Widget build(context, EProfile3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile3"),
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
  State<EProfile3View> createState() => EProfile3Controller();
}
