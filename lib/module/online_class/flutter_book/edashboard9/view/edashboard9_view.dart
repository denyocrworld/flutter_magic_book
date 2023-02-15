import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard9_controller.dart';

class EDashboard9View extends StatefulWidget {
  const EDashboard9View({Key? key}) : super(key: key);

  Widget build(context, EDashboard9Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard9"),
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
  State<EDashboard9View> createState() => EDashboard9Controller();
}
