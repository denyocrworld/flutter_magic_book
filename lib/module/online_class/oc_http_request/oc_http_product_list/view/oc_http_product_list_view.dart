import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_http_product_list_controller.dart';

class OcHttpProductListView extends StatefulWidget {
  const OcHttpProductListView({Key? key}) : super(key: key);

  Widget build(context, OcHttpProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcHttpProductList"),
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
  State<OcHttpProductListView> createState() => OcHttpProductListController();
}
