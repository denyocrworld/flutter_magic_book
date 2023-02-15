import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrListView extends StatefulWidget {
  const HrListView({Key? key}) : super(key: key);

  Widget build(context, HrListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrList"),
        actions: [
          IconButton(
            onPressed: () => controller.loadUsers(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "userList: ${controller.userList.length}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.userList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> item = controller.userList[index];

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"] ??
                              "https://i.ibb.co/S32HNjD/no-image.jpg",
                        ),
                      ),
                      title: Text("${item["first_name"]}"),
                      subtitle: Text("${item["email"]}}"),
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
  State<HrListView> createState() => HrListController();
}
