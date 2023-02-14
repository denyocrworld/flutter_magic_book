import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrDropdownView extends StatefulWidget {
  const HrDropdownView({Key? key}) : super(key: key);

  Widget build(context, HrDropdownController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrDropdown"),
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
                QDropdownField(
                  label: "Roles",
                  hint: "Your roles",
                  validator: Validator.required,
                  items: controller.userList,
                  onChanged: (value, label) {},
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HrDropdownView> createState() => HrDropdownController();
}
