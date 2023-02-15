import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_order_list_controller.dart';

class HrOrderListView extends StatefulWidget {
  const HrOrderListView({Key? key}) : super(key: key);

  Widget build(context, HrOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrOrderList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.orderList.length,
                itemBuilder: (context, index) {
                  var item = controller.orderList[index];
                  print(item);
                  print("--");
                  return Card(
                    child: ListTile(
                      leading: Text(
                        "# ${item["id"]}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Text(item["customer_name"]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["payment_method"]["payment_method_name"],
                          ),
                          Text(
                            item["items"][0]["product_name"],
                          ),
                        ],
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 14.0,
                        child: Text(
                          "${item["items"].length}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
  State<HrOrderListView> createState() => HrOrderListController();
}
