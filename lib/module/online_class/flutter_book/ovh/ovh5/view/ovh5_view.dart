import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ovh5_controller.dart';

class Ovh5View extends StatefulWidget {
  const Ovh5View({Key? key}) : super(key: key);

  Widget build(context, Ovh5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ovh5"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              Perbaiki overflow ini, font yang digunakan terlalu besar!
              Kecilkan agar tidak overflow!
              */
              Container(
                color: Colors.red,
                width: 80.0,
                height: 80.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.developer_board,
                      size: 24.0,
                    ),
                    Text(
                      "Hello World",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              /*
              Perbaiki overflow ini, font yang digunakan terlalu besar!
              Tapi kita tidak ingin mengecilkan font-nya.
              Bungkus Text dengan Expanded!
              */
              Container(
                color: Colors.red,
                width: 80.0,
                height: 80.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.developer_board,
                      size: 24.0,
                    ),
                    Text(
                      "Hello World, warga Indonesia",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Ovh5View> createState() => Ovh5Controller();
}
