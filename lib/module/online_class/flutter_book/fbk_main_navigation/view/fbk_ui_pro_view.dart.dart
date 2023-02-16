// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkUIProExerciseView extends StatelessWidget {
  const FbkUIProExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              getGrid(
                title: "EDR1",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard1View(),
                  ),
                  getMenu(
                    label: "Travel Detail",
                    view: const EdrTravelDetail1View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR2",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard2View(),
                  ),
                  getMenu(
                    label: "Travel Detail",
                    view: const EdrTravelDetail2View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR3",
                children: [
                  getMenu(
                    label: "Welcome",
                    view: const EdrWelcome3View(),
                  ),
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard3View(),
                  ),
                  getMenu(
                    label: "Travel",
                    view: const EdrTravelDetail3View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR4",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard4View(),
                  ),
                  getMenu(
                    label: "Movie Detail",
                    view: const EdrMovieDetail4View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR5",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard5View(),
                  ),
                  getMenu(
                    label: "Movie Detail",
                    view: const EdrMovieDetail5View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR6",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard6View(),
                  ),
                  getMenu(
                    label: "Movie Detail",
                    view: const EdrMovieDetail6View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR7",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard7View(),
                  ),
                  getMenu(
                    label: "Product Detail",
                    view: const EdrProductDetail7View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR8",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard8View(),
                  ),
                  getMenu(
                    label: "Product Detail",
                    view: const EdrProductDetail8View(),
                  ),
                  getMenu(
                    label: "Cart",
                    view: const EdrCart8View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR9",
                children: [
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard9View(),
                  ),
                  getMenu(
                    label: "Product List",
                    view: const EdrProductDetail9View(),
                  ),
                  getMenu(
                    label: "Product Detail",
                    view: const EdrProductDetail9View(),
                  ),
                ],
              ),
              getGrid(
                title: "EDR10",
                children: [
                  getMenu(
                    label: "Welcome",
                    view: const EdrWelcome10View(),
                  ),
                  getMenu(
                    label: "Dashboard",
                    view: const EdrDashboard10View(),
                  ),
                  getMenu(
                    label: "Product Detail",
                    view: const EdrProductDetail10View(),
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
