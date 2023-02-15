import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard8_controller.dart';

class EDashboard8View extends StatefulWidget {
  const EDashboard8View({Key? key}) : super(key: key);

  Widget build(context, EDashboard8Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard8"),
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
  State<EDashboard8View> createState() => EDashboard8Controller();
}
