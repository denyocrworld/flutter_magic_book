// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkUIBasicExerciseView extends StatelessWidget {
  const FbkUIBasicExerciseView({Key? key}) : super(key: key);

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
                title: "Latihan Layout - ELogin",
                children: [
                  getMenu(
                    label: "ELogin1",
                    view: const ELogin1View(),
                  ),
                  getMenu(
                    label: "ELogin2",
                    view: const ELogin2View(),
                  ),
                  getMenu(
                    label: "ELogin3",
                    view: const ELogin3View(),
                  ),
                  getMenu(
                    label: "ELogin4",
                    view: const ELogin4View(),
                  ),
                  getMenu(
                    label: "ELogin5",
                    view: const ELogin5View(),
                  ),
                  getMenu(
                    label: "ELogin6",
                    view: const ELogin6View(),
                  ),
                  getMenu(
                    label: "ELogin7",
                    view: const ELogin7View(),
                  ),
                  getMenu(
                    label: "ELogin8",
                    view: const ELogin8View(),
                  ),
                  getMenu(
                    label: "ELogin9",
                    view: const ELogin9View(),
                  ),
                  getMenu(
                    label: "ELogin10",
                    view: const ELogin10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - ESignup",
                children: [
                  getMenu(
                    label: "ESignup1",
                    view: const ESignup1View(),
                  ),
                  getMenu(
                    label: "ESignup2",
                    view: const ESignup2View(),
                  ),
                  getMenu(
                    label: "ESignup3",
                    view: const ESignup3View(),
                  ),
                  getMenu(
                    label: "ESignup4",
                    view: const ESignup4View(),
                  ),
                  getMenu(
                    label: "ESignup5",
                    view: const ESignup5View(),
                  ),
                  getMenu(
                    label: "ESignup6",
                    view: const ESignup6View(),
                  ),
                  getMenu(
                    label: "ESignup7",
                    view: const ESignup7View(),
                  ),
                  getMenu(
                    label: "ESignup8",
                    view: const ESignup8View(),
                  ),
                  getMenu(
                    label: "ESignup9",
                    view: const ESignup9View(),
                  ),
                  getMenu(
                    label: "ESignup10",
                    view: const ESignup10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EDashboard",
                children: [
                  getMenu(
                    label: "EDashboard1",
                    view: const EDashboard1View(),
                  ),
                  getMenu(
                    label: "EDashboard2",
                    view: const EDashboard2View(),
                  ),
                  getMenu(
                    label: "EDashboard3",
                    view: const EDashboard3View(),
                  ),
                  getMenu(
                    label: "EDashboard4",
                    view: const EDashboard4View(),
                  ),
                  getMenu(
                    label: "EDashboard5",
                    view: const EDashboard5View(),
                  ),
                  getMenu(
                    label: "EDashboard6",
                    view: const EDashboard6View(),
                  ),
                  getMenu(
                    label: "EDashboard7",
                    view: const EDashboard7View(),
                  ),
                  getMenu(
                    label: "EDashboard8",
                    view: const EDashboard8View(),
                  ),
                  getMenu(
                    label: "EDashboard9",
                    view: const EDashboard9View(),
                  ),
                  getMenu(
                    label: "EDashboard10",
                    view: const EDashboard10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EList",
                children: [
                  getMenu(
                    label: "EList1",
                    view: const EList1View(),
                  ),
                  getMenu(
                    label: "EList2",
                    view: const EList2View(),
                  ),
                  getMenu(
                    label: "EList3",
                    view: const EList3View(),
                  ),
                  getMenu(
                    label: "EList4",
                    view: const EList4View(),
                  ),
                  getMenu(
                    label: "EList5",
                    view: const EList5View(),
                  ),
                  getMenu(
                    label: "EList6",
                    view: const EList6View(),
                  ),
                  getMenu(
                    label: "EList7",
                    view: const EList7View(),
                  ),
                  getMenu(
                    label: "EList8",
                    view: const EList8View(),
                  ),
                  getMenu(
                    label: "EList9",
                    view: const EList9View(),
                  ),
                  getMenu(
                    label: "EList10",
                    view: const EList10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - ECategory",
                children: [
                  getMenu(
                    label: "ECategory1",
                    view: const ECategory1View(),
                  ),
                  getMenu(
                    label: "ECategory2",
                    view: const ECategory2View(),
                  ),
                  getMenu(
                    label: "ECategory3",
                    view: const ECategory3View(),
                  ),
                  getMenu(
                    label: "ECategory4",
                    view: const ECategory4View(),
                  ),
                  getMenu(
                    label: "ECategory5",
                    view: const ECategory5View(),
                  ),
                  getMenu(
                    label: "ECategory6",
                    view: const ECategory6View(),
                  ),
                  getMenu(
                    label: "ECategory7",
                    view: const ECategory7View(),
                  ),
                  getMenu(
                    label: "ECategory8",
                    view: const ECategory8View(),
                  ),
                  getMenu(
                    label: "ECategory9",
                    view: const ECategory9View(),
                  ),
                  getMenu(
                    label: "ECategory10",
                    view: const ECategory10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EDetail",
                children: [
                  getMenu(
                    label: "EDetail1",
                    view: const EDetail1View(),
                  ),
                  getMenu(
                    label: "EDetail2",
                    view: const EDetail2View(),
                  ),
                  getMenu(
                    label: "EDetail3",
                    view: const EDetail3View(),
                  ),
                  getMenu(
                    label: "EDetail4",
                    view: const EDetail4View(),
                  ),
                  getMenu(
                    label: "EDetail5",
                    view: const EDetail5View(),
                  ),
                  getMenu(
                    label: "EDetail6",
                    view: const EDetail6View(),
                  ),
                  getMenu(
                    label: "EDetail7",
                    view: const EDetail7View(),
                  ),
                  getMenu(
                    label: "EDetail8",
                    view: const EDetail8View(),
                  ),
                  getMenu(
                    label: "EDetail9",
                    view: const EDetail9View(),
                  ),
                  getMenu(
                    label: "EDetail10",
                    view: const EDetail10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - ECart",
                children: [
                  getMenu(
                    label: "ECart1",
                    view: const ECart1View(),
                  ),
                  getMenu(
                    label: "ECart2",
                    view: const ECart2View(),
                  ),
                  getMenu(
                    label: "ECart3",
                    view: const ECart3View(),
                  ),
                  getMenu(
                    label: "ECart4",
                    view: const ECart4View(),
                  ),
                  getMenu(
                    label: "ECart5",
                    view: const ECart5View(),
                  ),
                  getMenu(
                    label: "ECart6",
                    view: const ECart6View(),
                  ),
                  getMenu(
                    label: "ECart7",
                    view: const ECart7View(),
                  ),
                  getMenu(
                    label: "ECart8",
                    view: const ECart8View(),
                  ),
                  getMenu(
                    label: "ECart9",
                    view: const ECart9View(),
                  ),
                  getMenu(
                    label: "ECart10",
                    view: const ECart10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EOrderDetail",
                children: [
                  getMenu(
                    label: "EOrderDetail1",
                    view: const EOrderDetail1View(),
                  ),
                  getMenu(
                    label: "EOrderDetail2",
                    view: const EOrderDetail2View(),
                  ),
                  getMenu(
                    label: "EOrderDetail3",
                    view: const EOrderDetail3View(),
                  ),
                  getMenu(
                    label: "EOrderDetail4",
                    view: const EOrderDetail4View(),
                  ),
                  getMenu(
                    label: "EOrderDetail5",
                    view: const EOrderDetail5View(),
                  ),
                  getMenu(
                    label: "EOrderDetail6",
                    view: const EOrderDetail6View(),
                  ),
                  getMenu(
                    label: "EOrderDetail7",
                    view: const EOrderDetail7View(),
                  ),
                  getMenu(
                    label: "EOrderDetail8",
                    view: const EOrderDetail8View(),
                  ),
                  getMenu(
                    label: "EOrderDetail9",
                    view: const EOrderDetail9View(),
                  ),
                  getMenu(
                    label: "EOrderDetail10",
                    view: const EOrderDetail10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EProfile",
                children: [
                  getMenu(
                    label: "EProfile1",
                    view: const EProfile1View(),
                  ),
                  getMenu(
                    label: "EProfile2",
                    view: const EProfile2View(),
                  ),
                  getMenu(
                    label: "EProfile3",
                    view: const EProfile3View(),
                  ),
                  getMenu(
                    label: "EProfile4",
                    view: const EProfile4View(),
                  ),
                  getMenu(
                    label: "EProfile5",
                    view: const EProfile5View(),
                  ),
                  getMenu(
                    label: "EProfile6",
                    view: const EProfile6View(),
                  ),
                  getMenu(
                    label: "EProfile7",
                    view: const EProfile7View(),
                  ),
                  getMenu(
                    label: "EProfile8",
                    view: const EProfile8View(),
                  ),
                  getMenu(
                    label: "EProfile9",
                    view: const EProfile9View(),
                  ),
                  getMenu(
                    label: "EProfile10",
                    view: const EProfile10View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout - EEditProfile",
                children: [
                  getMenu(
                    label: "EEditProfile1",
                    view: const EEditProfile1View(),
                  ),
                  getMenu(
                    label: "EEditProfile2",
                    view: const EEditProfile2View(),
                  ),
                  getMenu(
                    label: "EEditProfile3",
                    view: const EEditProfile3View(),
                  ),
                  getMenu(
                    label: "EEditProfile4",
                    view: const EEditProfile4View(),
                  ),
                  getMenu(
                    label: "EEditProfile5",
                    view: const EEditProfile5View(),
                  ),
                  getMenu(
                    label: "EEditProfile6",
                    view: const EEditProfile6View(),
                  ),
                  getMenu(
                    label: "EEditProfile7",
                    view: const EEditProfile7View(),
                  ),
                  getMenu(
                    label: "EEditProfile8",
                    view: const EEditProfile8View(),
                  ),
                  getMenu(
                    label: "EEditProfile9",
                    view: const EEditProfile9View(),
                  ),
                  getMenu(
                    label: "EEditProfile10",
                    view: const EEditProfile10View(),
                  ),
                ],
              ),
              const SizedBox(
                height: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
