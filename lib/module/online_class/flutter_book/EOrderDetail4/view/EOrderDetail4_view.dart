import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail4_controller.dart';

class EOrderDetail4View extends StatefulWidget {
  const EOrderDetail4View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail4"),
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
  State<EOrderDetail4View> createState() => EOrderDetail4Controller();
}
