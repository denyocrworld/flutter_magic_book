import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_rotate_animation_controller.dart';

class SmRotateAnimationView extends StatefulWidget {
  const SmRotateAnimationView({Key? key}) : super(key: key);

  Widget build(context, SmRotateAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmRotateAnimation"),
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
              AnimatedRotation(
                duration: const Duration(milliseconds: 900),
                turns: (controller.animated ? 720 : 0) / 360,
                child: const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 900),
                turns: 2 / 360,
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: const NetworkImage(
                        "https://i.ibb.co/QrTHd59/woman.jpg",
                      ),
                    ),
                    title: const Text("Jessica Doe"),
                    subtitle: const Text("Programmer"),
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 900),
                turns: (controller.animated ? 2 : 0) / 360,
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: const NetworkImage(
                        "https://i.ibb.co/QrTHd59/woman.jpg",
                      ),
                    ),
                    title: const Text("Jessica Doe"),
                    subtitle: const Text("Programmer"),
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
  State<SmRotateAnimationView> createState() => SmRotateAnimationController();
}
