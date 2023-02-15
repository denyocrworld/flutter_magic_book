import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbUploadImageController extends State<FbUploadImageView>
    implements MvcController {
  static late FbUploadImageController instance;
  late FbUploadImageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photoUrl;
  String? name;
  doSave() async {
    await FirebaseFirestore.instance.collection("my_customers").add({
      "photo_url": photoUrl,
      "name": name,
    });
    showInfoDialog("Success!");
  }
}
