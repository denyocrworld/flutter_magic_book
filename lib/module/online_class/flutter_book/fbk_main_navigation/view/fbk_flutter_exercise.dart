// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
                  label: "Ovh 1",
                  view: const Ovh1View(),
                ),
                getMenu(
                  label: "Ovh 2",
                  view: const Ovh2View(),
                ),
                getMenu(
                  label: "Ovh 3",
                  view: const Ovh3View(),
                ),
                getMenu(
                  label: "Ovh 4",
                  view: const Ovh4View(),
                ),
                getMenu(
                  label: "Ovh 5",
                  view: const Ovh5View(),
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
