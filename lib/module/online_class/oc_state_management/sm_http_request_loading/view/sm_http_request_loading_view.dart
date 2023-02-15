import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_http_request_loading_controller.dart';

class SmHttpRequestLoadingView extends StatefulWidget {
  const SmHttpRequestLoadingView({Key? key}) : super(key: key);

  Widget build(context, SmHttpRequestLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmHttpRequestLoading"),
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
  State<SmHttpRequestLoadingView> createState() =>
      SmHttpRequestLoadingController();
}
