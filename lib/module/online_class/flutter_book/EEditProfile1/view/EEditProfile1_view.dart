import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile1_controller.dart';

class EEditProfile1View extends StatefulWidget {
  const EEditProfile1View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile1"),
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
  State<EEditProfile1View> createState() => EEditProfile1Controller();
}
