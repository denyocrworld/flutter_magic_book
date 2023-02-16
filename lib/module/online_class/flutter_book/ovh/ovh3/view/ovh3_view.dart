import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ovh3_controller.dart';

class Ovh3View extends StatefulWidget {
  const Ovh3View({Key? key}) : super(key: key);

  Widget build(context, Ovh3Controller controller) {
    controller.view = this;

    /*
    Perbaiki kode dibawah ini agar tidak overflow,
    Gunakan Expanded pada Text atau SingleChildScrollView dengan Axis Horizontal!
    
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovh3"),
        actions: const [],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<Ovh3View> createState() => Ovh3Controller();
}
