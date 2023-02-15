import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_product_detail10_controller.dart';

class EdrProductDetail10View extends StatefulWidget {
  const EdrProductDetail10View({Key? key}) : super(key: key);

  Widget build(context, EdrProductDetail10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrProductDetail10"),
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
  State<EdrProductDetail10View> createState() => EdrProductDetail10Controller();
}
