import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification10_controller.dart';

class ENotification10View extends StatefulWidget {
  const ENotification10View({Key? key}) : super(key: key);

  Widget build(context, ENotification10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification10"),
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
  State<ENotification10View> createState() => ENotification10Controller();
}
