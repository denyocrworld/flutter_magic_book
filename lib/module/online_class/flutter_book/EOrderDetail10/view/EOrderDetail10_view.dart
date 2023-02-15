import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail10_controller.dart';

class EOrderDetail10View extends StatefulWidget {
  const EOrderDetail10View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail10"),
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
  State<EOrderDetail10View> createState() => EOrderDetail10Controller();
}
