import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrRadioView extends StatefulWidget {
  const HrRadioView({Key? key}) : super(key: key);

  Widget build(context, HrRadioController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HrRadio"),
        actions: [
          IconButton(
            onPressed: () => controller.loadUserList(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              if (controller.userList.isNotEmpty)
                QRadioField(
                  label: "Barber",
                  hint: "Select your barber",
                  validator: Validator.atLeastOneitem,
                  items: controller.userList,
                  onChanged: (value, label) {
                    print(value);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HrRadioView> createState() => HrRadioController();
}
