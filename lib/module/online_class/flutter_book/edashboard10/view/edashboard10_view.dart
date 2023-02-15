import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard10_controller.dart';

class EDashboard10View extends StatefulWidget {
  const EDashboard10View({Key? key}) : super(key: key);

  Widget build(context, EDashboard10Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard10"),
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
  State<EDashboard10View> createState() => EDashboard10Controller();
}
