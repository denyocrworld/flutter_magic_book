import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail8_controller.dart';

class EOrderDetail8View extends StatefulWidget {
  const EOrderDetail8View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail8"),
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
  State<EOrderDetail8View> createState() => EOrderDetail8Controller();
}
