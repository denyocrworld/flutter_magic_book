import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import 'fbk_ui_pro_view.dart.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    if (mainStorage.get("eprofile_name") == null) {
      return const FbkFormView();
    }

    return DefaultTabController(
      length: 4,
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
            ],
          ),
          title: const Text('Flutter Magic Book'),
        ),
        body: TabBarView(
          children: [
            const FbkDartExerciseView(),
            const FbkFlutterExerciseView(),
            const FbkUIBasicExerciseView(),
            const FbkUIProExerciseView(),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FbkMainNavigationView> createState() => FbkMainNavigationController();
}
