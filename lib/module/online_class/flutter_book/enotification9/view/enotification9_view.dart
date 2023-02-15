import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification9_controller.dart';

class ENotification9View extends StatefulWidget {
  const ENotification9View({Key? key}) : super(key: key);

  Widget build(context, ENotification9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification9"),
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
  State<ENotification9View> createState() => ENotification9Controller();
}
