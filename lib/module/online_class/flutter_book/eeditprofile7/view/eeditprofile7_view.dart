import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile7_controller.dart';

class EEditProfile7View extends StatefulWidget {
  const EEditProfile7View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile7"),
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
  State<EEditProfile7View> createState() => EEditProfile7Controller();
}
