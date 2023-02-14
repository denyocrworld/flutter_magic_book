import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_scale_animation_controller.dart';

class SmScaleAnimationView extends StatefulWidget {
  const SmScaleAnimationView({Key? key}) : super(key: key);

  Widget build(context, SmScaleAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmScaleAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
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
                height: 100.0,
              ),
              AnimatedScale(
                duration: const Duration(milliseconds: 900),
                scale: controller.animated ? 2.0 : 1.0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              AnimatedScale(
                duration: const Duration(milliseconds: 900),
                scale: controller.animated ? 2.0 : 1.0,
                child: const Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              AnimatedScale(
                duration: const Duration(milliseconds: 900),
                scale: controller.animated ? 4.0 : 1.0,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
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
  State<SmScaleAnimationView> createState() => SmScaleAnimationController();
}
