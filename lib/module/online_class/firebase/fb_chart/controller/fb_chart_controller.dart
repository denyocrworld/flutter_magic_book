import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/util/dialog/show_info_dialog.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_chart_view.dart';

class FbChartController extends State<FbChartView> implements MvcController {
  static late FbChartController instance;
  late FbChartView view;

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
    var snapshot = await FirebaseFirestore.instance.collection("sales").get();
    for (var i = 0; i < snapshot.docs.length; i++) {
      await FirebaseFirestore.instance
          .collection("sales")
          .doc(snapshot.docs[i].id)
          .delete();
    }
    //fireadd
    for (var i = 0; i < 10; i++) {
      await FirebaseFirestore.instance.collection("sales").add({
        "created_at": Timestamp.now(),
        "year": 2000 + i,
        "sales": Random().nextInt(100),
      });
    }
    showInfoDialog("Berhasil mengenerate data!");
  }
}
