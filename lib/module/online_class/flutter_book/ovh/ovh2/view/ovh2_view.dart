import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ovh2_controller.dart';

class Ovh2View extends StatefulWidget {
  const Ovh2View({Key? key}) : super(key: key);

  Widget build(context, Ovh2Controller controller) {
    controller.view = this;

    /*
    Perbaiki kode dibawah ini agar tidak overflow,
    Gunakan Expanded! Bungkus pada Container yang berwarna ungu!
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovh2"),
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            height: 1000,
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<Ovh2View> createState() => Ovh2Controller();
}
