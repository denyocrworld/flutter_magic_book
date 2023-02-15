import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail5_controller.dart';

class EOrderDetail5View extends StatefulWidget {
  const EOrderDetail5View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail5"),
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
  State<EOrderDetail5View> createState() => EOrderDetail5Controller();
}
