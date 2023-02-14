import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmVisibilityView extends StatefulWidget {
  const SmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, SmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.visible}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateVisibility(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.visible)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        QTextField(
                          label: "Email",
                          hint: "Your email",
                          validator: Validator.email,
                          value: "demo@gmail.com",
                          onChanged: (value) {},
                        ),
                        QTextField(
                          label: "Password",
                          hint: "Your password",
                          obscure: true,
                          validator: Validator.required,
                          value: "123456",
                          onChanged: (value) {},
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 900),
                opacity: controller.visible ? 1.0 : 0.0,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        QTextField(
                          label: "Email",
                          hint: "Your email",
                          validator: Validator.email,
                          value: "demo@gmail.com",
                          onChanged: (value) {},
                        ),
                        QTextField(
                          label: "Password",
                          hint: "Your password",
                          obscure: true,
                          validator: Validator.required,
                          value: "123456",
                          onChanged: (value) {},
                        ),
                        QTextField(
                          label: "Confirm Password",
                          hint: "Your password",
                          obscure: true,
                          validator: Validator.required,
                          value: "123456",
                          onChanged: (value) {},
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.login),
                          label: const Text("Login"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
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
  State<SmVisibilityView> createState() => SmVisibilityController();
}
