import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_travel_detail2_controller.dart';

class EdrTravelDetail2View extends StatefulWidget {
  const EdrTravelDetail2View({Key? key}) : super(key: key);

  Widget build(context, EdrTravelDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrTravelDetail2"),
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
  State<EdrTravelDetail2View> createState() => EdrTravelDetail2Controller();
}
