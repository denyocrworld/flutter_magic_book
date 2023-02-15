import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard1_controller.dart';

class EDashboard1View extends StatefulWidget {
  const EDashboard1View({Key? key}) : super(key: key);

  Widget build(context, EDashboard1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard1"),
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
  State<EDashboard1View> createState() => EDashboard1Controller();
}
