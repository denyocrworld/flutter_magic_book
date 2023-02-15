import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_product_detail8_controller.dart';

class EdrProductDetail8View extends StatefulWidget {
  const EdrProductDetail8View({Key? key}) : super(key: key);

  Widget build(context, EdrProductDetail8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrProductDetail8"),
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
  State<EdrProductDetail8View> createState() => EdrProductDetail8Controller();
}
