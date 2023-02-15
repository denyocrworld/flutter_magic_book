import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile7_controller.dart';

class EProfile7View extends StatefulWidget {
  const EProfile7View({Key? key}) : super(key: key);

  Widget build(context, EProfile7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile7"),
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
  State<EProfile7View> createState() => EProfile7Controller();
}
