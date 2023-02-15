import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification2_controller.dart';

class ENotification2View extends StatefulWidget {
  const ENotification2View({Key? key}) : super(key: key);

  Widget build(context, ENotification2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification2"),
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
  State<ENotification2View> createState() => ENotification2Controller();
}
