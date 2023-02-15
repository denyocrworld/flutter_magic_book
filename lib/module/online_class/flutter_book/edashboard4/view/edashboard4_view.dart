import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard4_controller.dart';

class EDashboard4View extends StatefulWidget {
  const EDashboard4View({Key? key}) : super(key: key);

  Widget build(context, EDashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard4"),
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
  State<EDashboard4View> createState() => EDashboard4Controller();
}
