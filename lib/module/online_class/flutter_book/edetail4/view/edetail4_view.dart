import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edetail4_controller.dart';

class EDetail4View extends StatefulWidget {
  const EDetail4View({Key? key}) : super(key: key);

  Widget build(context, EDetail4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDetail4"),
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
  State<EDetail4View> createState() => EDetail4Controller();
}
