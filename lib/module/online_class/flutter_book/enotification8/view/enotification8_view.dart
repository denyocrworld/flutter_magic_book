import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification8_controller.dart';

class ENotification8View extends StatefulWidget {
  const ENotification8View({Key? key}) : super(key: key);

  Widget build(context, ENotification8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification8"),
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
  State<ENotification8View> createState() => ENotification8Controller();
}
