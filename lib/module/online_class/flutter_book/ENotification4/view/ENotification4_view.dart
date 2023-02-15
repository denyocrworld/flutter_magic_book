import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification4_controller.dart';

class ENotification4View extends StatefulWidget {
  const ENotification4View({Key? key}) : super(key: key);

  Widget build(context, ENotification4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification4"),
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
  State<ENotification4View> createState() => ENotification4Controller();
}
