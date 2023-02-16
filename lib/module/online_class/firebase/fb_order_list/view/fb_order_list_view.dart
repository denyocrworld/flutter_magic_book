import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbOrderListView extends StatefulWidget {
  const FbOrderListView({Key? key}) : super(key: key);

  Widget build(context, FbOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbOrderList"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doGenerate(),
              child: const Text("Generate"),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //Ctrl+Shift+ALT+W
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("customers")
                    .orderBy(
                      "created_at",
                      descending: true,
                    )
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;

                      Timestamp createdAt = item["created_at"];
                      String dMMMy = DateFormat("d MMM y kk:mm:ss")
                          .format(createdAt.toDate());
                      return Card(
                        child: ListTile(
                          title: Text("${item["name"]} "),
                          subtitle: Text(dMMMy),
                        ),
                      );
                    },
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
  State<FbOrderListView> createState() => FbOrderListController();
}
