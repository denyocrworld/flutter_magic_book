import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard7_controller.dart';

class EDashboard7View extends StatefulWidget {
  const EDashboard7View({Key? key}) : super(key: key);

  Widget build(context, EDashboard7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDashboard7"),
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
  State<EDashboard7View> createState() => EDashboard7Controller();
}
