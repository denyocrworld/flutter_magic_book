import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_list_controller.dart';

class FbListView extends StatefulWidget {
  const FbListView({Key? key}) : super(key: key);

  Widget build(context, FbListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbList"),
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
                      return Card(
                        child: ListTile(
                          title: Text("${item["name"]} "),
                          subtitle: Text("${item["city"]}"),
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
  State<FbListView> createState() => FbListController();
}
