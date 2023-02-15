import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile4_controller.dart';

class EProfile4View extends StatefulWidget {
  const EProfile4View({Key? key}) : super(key: key);

  Widget build(context, EProfile4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile4"),
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
  State<EProfile4View> createState() => EProfile4Controller();
}
