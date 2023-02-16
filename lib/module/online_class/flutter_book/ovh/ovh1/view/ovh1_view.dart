import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ovh1_controller.dart';

class Ovh1View extends StatefulWidget {
  const Ovh1View({Key? key}) : super(key: key);

  Widget build(context, Ovh1Controller controller) {
    controller.view = this;

    /*
    Perbaiki kode dibawah ini agar tidak overflow,
    Gunakan SingleChildScrollView!
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovh1"),
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
  State<Ovh1View> createState() => Ovh1Controller();
}
