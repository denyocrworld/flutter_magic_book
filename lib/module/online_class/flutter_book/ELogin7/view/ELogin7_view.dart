import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin7_controller.dart';

class ELogin7View extends StatefulWidget {
  const ELogin7View({Key? key}) : super(key: key);

  Widget build(context, ELogin7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin7"),
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
  State<ELogin7View> createState() => ELogin7Controller();
}
