import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eeditprofile3_controller.dart';

class EEditProfile3View extends StatefulWidget {
  const EEditProfile3View({Key? key}) : super(key: key);

  Widget build(context, EEditProfile3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EEditProfile3"),
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
  State<EEditProfile3View> createState() => EEditProfile3Controller();
}
