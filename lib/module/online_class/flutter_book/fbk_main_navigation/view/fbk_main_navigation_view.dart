import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    if (mainStorage.get("eprofile_name") == null) {
      return const FbkFormView();
    }

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "Dart",
              ),
              Tab(
                text: "Flutter",
              ),
              Tab(
                text: "UI Basic",
              ),
              Tab(
                text: "UI Pro",
              ),
              Tab(
                text: "Full Apps Exercise",
              ),
            ],
          ),
          title: const Text('Flutter Magic Book'),
        ),
        body: const TabBarView(
          children: [
            FbkDartExerciseView(),
            FbkFlutterExerciseView(),
            FbkUIBasicExerciseView(),
            FbkUIProExerciseView(),
            FbkFullAppsExerciseView(),
          ],
        ),
      ),
    );
  }

  @override
  State<FbkMainNavigationView> createState() => FbkMainNavigationController();
}
