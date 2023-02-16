import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbOrderListController extends State<FbOrderListView>
    implements MvcController {
  static late FbOrderListController instance;
  late FbOrderListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doGenerate() async {
    //firedeleteall
    var snapshot =
        await FirebaseFirestore.instance.collection("customers").get();
    for (var i = 0; i < snapshot.docs.length; i++) {
      await FirebaseFirestore.instance
          .collection("customers")
          .doc(snapshot.docs[i].id)
          .delete();
    }
    //fireadd
    for (var i = 0; i < 10; i++) {
      await FirebaseFirestore.instance.collection("customers").add({
        // "created_at": DateTime.now(),
        "created_at": Timestamp.now(),
        "name": "Anang Hermansyah $i",
        "city": "Jakarta $i",
      });
    }
    showInfoDialog("Berhasil mengenerate data!");
  }
}
