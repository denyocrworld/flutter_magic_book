import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail2_controller.dart';

class EOrderDetail2View extends StatefulWidget {
  const EOrderDetail2View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail2"),
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
  State<EOrderDetail2View> createState() => EOrderDetail2Controller();
}
