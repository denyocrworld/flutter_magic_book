import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile9_controller.dart';

class EEditProfile9View extends StatefulWidget {
  const EEditProfile9View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile9"),
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
  State<EEditProfile9View> createState() => EEditProfile9Controller();
}
