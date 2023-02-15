import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile2_controller.dart';

class EEditProfile2View extends StatefulWidget {
  const EEditProfile2View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile2"),
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
  State<EEditProfile2View> createState() => EEditProfile2Controller();
}
