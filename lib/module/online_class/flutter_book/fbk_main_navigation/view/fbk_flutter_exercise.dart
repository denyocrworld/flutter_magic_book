import 'package:flutter/material.dart';

import '../widget/get_grid.dart';

class FbkFlutterExerciseView extends StatelessWidget {
  const FbkFlutterExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              getGrid(title: "Flutter - Overflow Handling", children: [
                getMenu(
                  label: "Overflow Handling",
                  disabled: true,
                  view: Container(),
                ),
              ]),
              getGrid(
                title: "Flutter - State Management",
                children: [
                  getMenu(
                    label: "State Management",
                    disabled: true,
                    view: Container(),
                  ),
                ],
              ),
              getGrid(
                title: "Flutter - Local Storage",
                children: [
                  getMenu(
                    label: "Local Storage",
                    disabled: true,
                    view: Container(),
                  ),
                ],
              ),
              getGrid(
                title: "HTTP Request",
                children: [
                  getMenu(
                    label: "Http Request",
                    disabled: true,
                    view: Container(),
                  ),
                ],
              ),
              getGrid(
                title: "Flutter - Firebase",
                children: [
                  getMenu(
                    label: "Firebase",
                    disabled: true,
                    view: Container(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
