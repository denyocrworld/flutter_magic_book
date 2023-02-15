import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile10_controller.dart';

class EEditProfile10View extends StatefulWidget {
  const EEditProfile10View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile10"),
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
  State<EEditProfile10View> createState() => EEditProfile10Controller();
}
