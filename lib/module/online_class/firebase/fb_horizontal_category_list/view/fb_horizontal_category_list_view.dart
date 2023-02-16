import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbHorizontalCategoryListView extends StatefulWidget {
  const FbHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, FbHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbHorizontalCategoryList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //Ctrl+Shift+ALT+W
            SizedBox(
              height: 70.0,
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
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;

                      Timestamp createdAt = item["created_at"];
                      String dMMMy = DateFormat("d MMM y kk:mm:ss")
                          .format(createdAt.toDate());
                      bool isSelected = controller.selectedId == item["id"];

                      return InkWell(
                        onTap: () {
                          controller.selectedId = item["id"];
                          controller.setState(() {});
                        },
                        child: Container(
                          height: 100.0,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected ? Colors.orange : Colors.blue[300],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "${item["name"]}",
                            ),
                          ),
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
  State<FbHorizontalCategoryListView> createState() =>
      FbHorizontalCategoryListController();
}
