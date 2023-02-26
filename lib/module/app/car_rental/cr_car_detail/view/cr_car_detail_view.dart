import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cr_car_detail_controller.dart';

class CrCarDetailView extends StatefulWidget {
  const CrCarDetailView({Key? key}) : super(key: key);

  Widget build(context, CrCarDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CrCarDetail"),
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
  State<CrCarDetailView> createState() => CrCarDetailController();
}
