import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard2_controller.dart';

class EDashboard2View extends StatefulWidget {
  const EDashboard2View({Key? key}) : super(key: key);

  Widget build(context, EDashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard2"),
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
  State<EDashboard2View> createState() => EDashboard2Controller();
}
