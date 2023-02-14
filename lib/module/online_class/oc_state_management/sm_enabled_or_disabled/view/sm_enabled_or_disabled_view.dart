import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmEnabledOrDisabledView extends StatefulWidget {
  const SmEnabledOrDisabledView({Key? key}) : super(key: key);

  Widget build(context, SmEnabledOrDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmEnabledOrDisabled"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        value: controller.email,
                        onChanged: (value) {
                          controller.email = value;
                          controller.updateState();
                        },
                      ),
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        value: controller.password,
                        onChanged: (value) {
                          controller.password = value;
                          controller.updateState();
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.enabled
                              ? Colors.blueGrey
                              : Colors.grey[300],
                        ),
                        onPressed: () {
                          if (!controller.enabled) return;
                          showInfoDialog("Hello!");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SmEnabledOrDisabledView> createState() =>
      SmEnabledOrDisabledController();
}
