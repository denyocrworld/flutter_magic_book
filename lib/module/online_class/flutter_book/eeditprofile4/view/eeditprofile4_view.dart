import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile4_controller.dart';

class EEditProfile4View extends StatefulWidget {
  const EEditProfile4View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile4"),
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
  State<EEditProfile4View> createState() => EEditProfile4Controller();
}
