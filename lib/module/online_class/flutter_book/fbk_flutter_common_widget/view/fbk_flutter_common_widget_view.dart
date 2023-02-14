import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_flutter_common_widget_controller.dart';

class FbkFlutterCommonWidgetView extends StatefulWidget {
  const FbkFlutterCommonWidgetView({Key? key}) : super(key: key);

  Widget build(context, FbkFlutterCommonWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkFlutterCommonWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkFlutterCommonWidgetView> createState() =>
      FbkFlutterCommonWidgetController();
}
