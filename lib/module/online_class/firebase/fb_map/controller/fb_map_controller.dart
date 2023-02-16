import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/util/dialog/show_info_dialog.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_map_view.dart';

class FbMapController extends State<FbMapView> implements MvcController {
  static late FbMapController instance;
  late FbMapView view;

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
        "latitude": -6.1754234 - (0.0002000 * (i + 1)),
        "longitude": 106.827224 - (0.0002000 * (i + 1)),
      });
    }
    showInfoDialog("Berhasil mengenerate data!");
  }
}
