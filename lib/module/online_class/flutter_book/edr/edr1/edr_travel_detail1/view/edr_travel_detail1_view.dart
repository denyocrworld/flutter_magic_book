import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_travel_detail1_controller.dart';

class EdrTravelDetail1View extends StatefulWidget {
  const EdrTravelDetail1View({Key? key}) : super(key: key);

  Widget build(context, EdrTravelDetail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrTravelDetail1"),
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
  State<EdrTravelDetail1View> createState() => EdrTravelDetail1Controller();
}
