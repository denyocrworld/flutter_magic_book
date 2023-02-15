import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_crud_list_view.dart';

class FbCrudListController extends State<FbCrudListView>
    implements MvcController {
  static late FbCrudListController instance;
  late FbCrudListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doDelete(String docId) async {
    await FirebaseFirestore.instance.collection("foods").doc(docId).delete();
  }
}
