import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_counter_controller.dart';

class SmCounterView extends StatefulWidget {
  const SmCounterView({Key? key}) : super(key: key);

  Widget build(context, SmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateCounter(),
              ),
              const Divider(),
              Text(
                controller.name,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.refresh),
                label: const Text("Change"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateName(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SmCounterView> createState() => SmCounterController();
}
