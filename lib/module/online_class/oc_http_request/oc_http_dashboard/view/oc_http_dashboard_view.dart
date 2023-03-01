import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OcHttpDashboardView extends StatefulWidget {
  const OcHttpDashboardView({Key? key}) : super(key: key);

  Widget build(context, OcHttpDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcHttpDashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: QListView(
                futureBuilder: (page) async {
                  var response = await Dio().get(
                    "https://capekngoding.com/YOURNAME/api/products",
                    options: Options(
                      headers: {
                        "Content-Type": "application/json",
                      },
                    ),
                  );
                  return response;
                },
                builder: (index, item) {
                  return Card(
                    child: ListTile(
                      title: Text("${item["product_name"] ?? "-"}"),
                      subtitle: Text("${item["price"] ?? "-"}"),
                    ),
                  );
                },
              ),
            ),
            // Expanded(
            //   child: QListView(
            //     futureBuilder: (page) async {
            //       var response = await ProductService.getProducts();
            //       return response;
            //     },
            //     builder: (index, item) {
            //       return Card(
            //         child: ListTile(
            //           title: Text("${item["product_name"] ?? "-"}"),
            //           subtitle: Text("${item["price"] ?? "-"}"),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  State<OcHttpDashboardView> createState() => OcHttpDashboardController();
}
