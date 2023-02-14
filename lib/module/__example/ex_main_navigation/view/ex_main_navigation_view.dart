import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ex_main_navigation_controller.dart';

class ExMainNavigationView extends StatefulWidget {
  const ExMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, ExMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ExMainNavigation"),
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
  State<ExMainNavigationView> createState() => ExMainNavigationController();
}
