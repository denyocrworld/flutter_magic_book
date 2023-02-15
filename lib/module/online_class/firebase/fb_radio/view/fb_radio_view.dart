import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbRadioView extends StatefulWidget {
  const FbRadioView({Key? key}) : super(key: key);

  Widget build(context, FbRadioController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbRadio"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
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
                  List<Map<String, dynamic>> items = [];
                  for (var doc in snapshot.data!.docs) {
                    Map<String, dynamic> data =
                        (doc.data() as Map<String, dynamic>);
                    items.add({
                      "label": data["name"] ?? "-",
                      "id": doc.id,
                    });
                  }
                  return QRadioField(
                    label: "Vendor",
                    hint: "Your vendor",
                    validator: Validator.atLeastOneitem,
                    items: items,
                    onChanged: (value, label) {},
                  );
                },
              ),
            ),
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
                  List<Map<String, dynamic>> items = [];
                  for (var doc in snapshot.data!.docs) {
                    Map<String, dynamic> data =
                        (doc.data() as Map<String, dynamic>);
                    items.add({
                      "label": data["name"] ?? "-",
                      "id": doc.id,
                    });
                  }
                  return QCheckField(
                    label: "Club",
                    hint: "Your favorite football club",
                    validator: Validator.atLeastOneitem,
                    items: items,
                    onChanged: (values, ids) {},
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
  State<FbRadioView> createState() => FbRadioController();
}
