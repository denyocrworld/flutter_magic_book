import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin6_controller.dart';

class ELogin6View extends StatefulWidget {
  const ELogin6View({Key? key}) : super(key: key);

  Widget build(context, ELogin6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin6"),
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
  State<ELogin6View> createState() => ELogin6Controller();
}
