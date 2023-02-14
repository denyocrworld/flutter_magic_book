import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbDropdownView extends StatefulWidget {
  const FbDropdownView({Key? key}) : super(key: key);

  Widget build(context, FbDropdownController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbDropdown"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
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

                return QDropdownField(
                  label: "Roles",
                  hint: "Your roles",
                  validator: Validator.required,
                  items: items,
                  onChanged: (value, label) {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FbDropdownView> createState() => FbDropdownController();
}
