import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail9_controller.dart';

class EOrderDetail9View extends StatefulWidget {
  const EOrderDetail9View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail9"),
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
  State<EOrderDetail9View> createState() => EOrderDetail9Controller();
}
