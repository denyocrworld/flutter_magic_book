import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eprofile6_controller.dart';

class EProfile6View extends StatefulWidget {
  const EProfile6View({Key? key}) : super(key: key);

  Widget build(context, EProfile6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EProfile6"),
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
  State<EProfile6View> createState() => EProfile6Controller();
}
