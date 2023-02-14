import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_encode_and_decode_controller.dart';

class FbkDartEncodeAndDecodeView extends StatefulWidget {
  const FbkDartEncodeAndDecodeView({Key? key}) : super(key: key);

  Widget build(context, FbkDartEncodeAndDecodeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartEncodeAndDecode"),
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
  State<FbkDartEncodeAndDecodeView> createState() =>
      FbkDartEncodeAndDecodeController();
}
