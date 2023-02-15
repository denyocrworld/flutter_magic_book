import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard5_controller.dart';

class EDashboard5View extends StatefulWidget {
  const EDashboard5View({Key? key}) : super(key: key);

  Widget build(context, EDashboard5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard5"),
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
  State<EDashboard5View> createState() => EDashboard5Controller();
}
