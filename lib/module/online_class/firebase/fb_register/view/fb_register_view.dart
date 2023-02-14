import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbRegisterView extends StatefulWidget {
  const FbRegisterView({Key? key}) : super(key: key);

  Widget build(context, FbRegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbRegister"),
        actions: const [],
      ),
      body: Container(
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
                      onChanged: (value) {
                        controller.email = value;
                      },
                    ),
                    QTextField(
                      label: "Password",
                      hint: "Your password",
                      obscure: true,
                      validator: Validator.required,
                      suffixIcon: Icons.password,
                      onChanged: (value) {
                        controller.password = value;
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () => controller.doLogin(),
                      child: const Text("Register"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FbRegisterView> createState() => FbRegisterController();
}
