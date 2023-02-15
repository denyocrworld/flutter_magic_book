import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory9_controller.dart';

class ECategory9View extends StatefulWidget {
  const ECategory9View({Key? key}) : super(key: key);

  Widget build(context, ECategory9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory9"),
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
  State<ECategory9View> createState() => ECategory9Controller();
}
