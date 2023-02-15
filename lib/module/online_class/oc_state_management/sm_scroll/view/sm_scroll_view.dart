import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_scroll_controller.dart';

class SmScrollView extends StatefulWidget {
  const SmScrollView({Key? key}) : super(key: key);

  Widget build(context, SmScrollController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmScroll"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: controller.scrollController,
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("#$index ${item["product_name"]}"),
                      subtitle: Text("${item["price"]}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SmScrollView> createState() => SmScrollController();
}
