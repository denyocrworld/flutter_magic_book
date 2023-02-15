import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard6_controller.dart';

class EDashboard6View extends StatefulWidget {
  const EDashboard6View({Key? key}) : super(key: key);

  Widget build(context, EDashboard6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard6"),
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
  State<EDashboard6View> createState() => EDashboard6Controller();
}
