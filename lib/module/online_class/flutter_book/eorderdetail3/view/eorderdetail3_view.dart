import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail3_controller.dart';

class EOrderDetail3View extends StatefulWidget {
  const EOrderDetail3View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail3"),
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
  State<EOrderDetail3View> createState() => EOrderDetail3Controller();
}
