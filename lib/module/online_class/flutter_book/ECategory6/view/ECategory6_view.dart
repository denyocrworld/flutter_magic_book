import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory6_controller.dart';

class ECategory6View extends StatefulWidget {
  const ECategory6View({Key? key}) : super(key: key);

  Widget build(context, ECategory6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ECategory6"),
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
  State<ECategory6View> createState() => ECategory6Controller();
}
