import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification1_controller.dart';

class ENotification1View extends StatefulWidget {
  const ENotification1View({Key? key}) : super(key: key);

  Widget build(context, ENotification1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification1"),
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
  State<ENotification1View> createState() => ENotification1Controller();
}
