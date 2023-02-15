import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard3_controller.dart';

class EDashboard3View extends StatefulWidget {
  const EDashboard3View({Key? key}) : super(key: key);

  Widget build(context, EDashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard3"),
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
  State<EDashboard3View> createState() => EDashboard3Controller();
}
