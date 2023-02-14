import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmFadeAnimationView extends StatefulWidget {
  const SmFadeAnimationView({Key? key}) : super(key: key);

  Widget build(context, SmFadeAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmFadeAnimation"),
        actions: const [],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "${controller.animated}",
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Update State"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () => controller.updateState(),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.only(
                    top: controller.animated ? 300.0 : 0,
                  ),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity: controller.animated ? 0.0 : 1.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SmFadeAnimationView> createState() => SmFadeAnimationController();
}
