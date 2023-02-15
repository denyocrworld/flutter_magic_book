import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile8_controller.dart';

class EEditProfile8View extends StatefulWidget {
  const EEditProfile8View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile8"),
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
  State<EEditProfile8View> createState() => EEditProfile8Controller();
}
