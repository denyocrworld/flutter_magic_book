import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail1_controller.dart';

class EOrderDetail1View extends StatefulWidget {
  const EOrderDetail1View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail1"),
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
  State<EOrderDetail1View> createState() => EOrderDetail1Controller();
}
