import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification5_controller.dart';

class ENotification5View extends StatefulWidget {
  const ENotification5View({Key? key}) : super(key: key);

  Widget build(context, ENotification5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification5"),
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
  State<ENotification5View> createState() => ENotification5Controller();
}
