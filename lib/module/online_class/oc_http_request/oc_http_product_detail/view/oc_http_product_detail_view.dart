import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_http_product_detail_controller.dart';

class OcHttpProductDetailView extends StatefulWidget {
  const OcHttpProductDetailView({Key? key}) : super(key: key);

  Widget build(context, OcHttpProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcHttpProductDetail"),
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
  State<OcHttpProductDetailView> createState() =>
      OcHttpProductDetailController();
}
