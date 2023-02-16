import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_basic_animation_controller.dart';

class SmBasicAnimationView extends StatefulWidget {
  const SmBasicAnimationView({Key? key}) : super(key: key);

  Widget build(context, SmBasicAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmBasicAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.animated}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Update State"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateState(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                //dur900
                duration: const Duration(milliseconds: 200),
                width: controller.animated ? 300 : 200,
                margin: EdgeInsets.only(
                  left: controller.animated ? 100 : 0.0,
                ),
                height: 200,
                decoration: BoxDecoration(
                  color: controller.animated ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(controller.animated ? 60 : 12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SmBasicAnimationView> createState() => SmBasicAnimationController();
}
