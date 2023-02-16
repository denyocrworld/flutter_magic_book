import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbLoginView extends StatefulWidget {
  const FbLoginView({Key? key}) : super(key: key);

  Widget build(context, FbLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbLogin"),
        actions: const [],
      ),
      //CTRL+SHIFT+ALT+R
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //ALT+SHIFT+ENTER
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doLogin(),
                        child: const Text("Login"),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 42,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.person),
                        label: const Text("Guest Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doGuestLogin(),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 42,
                      child: ElevatedButton.icon(
                        icon: const Icon(MdiIcons.google),
                        label: const Text("Gooogle Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doGoogleLogin(),
                      ),
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
  State<FbLoginView> createState() => FbLoginController();
}
