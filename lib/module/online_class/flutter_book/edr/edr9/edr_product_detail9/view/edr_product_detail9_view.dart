import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_product_detail9_controller.dart';

class EdrProductDetail9View extends StatefulWidget {
  const EdrProductDetail9View({Key? key}) : super(key: key);

  Widget build(context, EdrProductDetail9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrProductDetail9"),
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
  State<EdrProductDetail9View> createState() => EdrProductDetail9Controller();
}
