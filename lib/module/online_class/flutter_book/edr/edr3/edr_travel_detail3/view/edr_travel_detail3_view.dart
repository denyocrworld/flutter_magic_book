import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_travel_detail3_controller.dart';

class EdrTravelDetail3View extends StatefulWidget {
  const EdrTravelDetail3View({Key? key}) : super(key: key);

  Widget build(context, EdrTravelDetail3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrTravelDetail3"),
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
  State<EdrTravelDetail3View> createState() => EdrTravelDetail3Controller();
}
