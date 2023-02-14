import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartDateUtilView extends StatefulWidget {
  const FbkDartDateUtilView({Key? key}) : super(key: key);
  bool? exercise1() {
    int? number;

    return number == 0;
  }

  Widget build(context, FbkDartDateUtilController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartDateUtil"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartDateUtilView> createState() => FbkDartDateUtilController();
}
