import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/enotification3_controller.dart';

class ENotification3View extends StatefulWidget {
  const ENotification3View({Key? key}) : super(key: key);

  Widget build(context, ENotification3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ENotification3"),
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
  State<ENotification3View> createState() => ENotification3Controller();
}
