import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory7_controller.dart';

class ECategory7View extends StatefulWidget {
  const ECategory7View({Key? key}) : super(key: key);

  Widget build(context, ECategory7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory7"),
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
  State<ECategory7View> createState() => ECategory7Controller();
}
