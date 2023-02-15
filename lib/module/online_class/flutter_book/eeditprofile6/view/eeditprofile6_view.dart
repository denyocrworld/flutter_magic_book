import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile6_controller.dart';

class EEditProfile6View extends StatefulWidget {
  const EEditProfile6View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile6"),
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
  State<EEditProfile6View> createState() => EEditProfile6Controller();
}
