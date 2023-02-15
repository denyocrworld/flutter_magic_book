import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification6_controller.dart';

class ENotification6View extends StatefulWidget {
  const ENotification6View({Key? key}) : super(key: key);

  Widget build(context, ENotification6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification6"),
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
  State<ENotification6View> createState() => ENotification6Controller();
}
