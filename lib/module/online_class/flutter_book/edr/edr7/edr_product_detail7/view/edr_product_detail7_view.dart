import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_product_detail7_controller.dart';

class EdrProductDetail7View extends StatefulWidget {
  const EdrProductDetail7View({Key? key}) : super(key: key);

  Widget build(context, EdrProductDetail7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrProductDetail7"),
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
  State<EdrProductDetail7View> createState() => EdrProductDetail7Controller();
}
