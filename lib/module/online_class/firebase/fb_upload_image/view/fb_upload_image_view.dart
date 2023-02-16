import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Firebase Storage
Hosting temen2
Imgbb
Cloudinary


url
*/
class FbUploadImageView extends StatefulWidget {
  const FbUploadImageView({Key? key}) : super(key: key);

  Widget build(context, FbUploadImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbUploadImage"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    QImagePicker(
                      label: "Photo",
                      hint: "Your photo",
                      validator: Validator.required,
                      value: null,
                      onChanged: (value) {
                        controller.photoUrl = value;
                      },
                    ),
                    QTextField(
                      label: "Customer Name",
                      hint: "Name",
                      validator: Validator.required,
                      onChanged: (value) {
                        controller.name = value;
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () => controller.doSave(),
                      child: const Text("Save"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("my_customers")
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
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo_url"],
                            ),
                          ),
                          title: Text("${item["name"]}"),
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
  State<FbUploadImageView> createState() => FbUploadImageController();
}
