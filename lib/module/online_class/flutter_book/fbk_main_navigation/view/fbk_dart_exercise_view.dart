// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartExerciseView extends StatelessWidget {
  const FbkDartExerciseView({Key? key}) : super(key: key);

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
                title: "The Basic",
                children: [
                  getMenu(
                    label: "WPM",
                    view: const FbkWpmView(),
                  ),
                ],
              ),
              getGrid(
                title: "Dart Basic",
                children: [
                  getMenu(
                    label: "Variable",
                    view: const FbkDartVariableView(),
                  ),
                  getMenu(
                    label: "Symbol",
                    view: const FbkDartSymbolView(),
                  ),
                  getMenu(
                    label: "String",
                    view: const FbkDartStringView(),
                  ),
                  getMenu(
                    label: "Number",
                    view: const FbkDartNumberView(),
                  ),
                  getMenu(
                    label: "DateTime",
                    view: const FbkDartDatetimeView(),
                  ),
                  getMenu(
                    label: "IF Statement",
                    view: const FbkDartIfStatementView(),
                  ),
                  getMenu(
                    label: "List & Map",
                    view: const FbkDartListAndMapView(),
                  ),
                  getMenu(
                    label: "Regex",
                    view: const FbkDartRegexView(),
                  ),
                  getMenu(
                    label: "Encode and Decode",
                    disabled: true,
                    view: const FbkDartEncodeAndDecodeView(),
                  ),
                  getMenu(
                    label: "Model",
                    disabled: true,
                    view: const FbkDartModelView(),
                  ),
                  getMenu(
                    label: "Service",
                    disabled: true,
                    view: const FbkDartServiceView(),
                  ),
                  getMenu(
                    label: "Date Util",
                    disabled: true,
                    view: const FbkDartDateUtilView(),
                  ),
                  getMenu(
                    label: "String Util",
                    disabled: true,
                    view: const FbkDartStringView(),
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
