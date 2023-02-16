// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core.dart';

class FbkFormView extends StatelessWidget {
  const FbkFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FbkMainNavigationController controller =
        FbkMainNavigationController.instance;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: const Text("Eits isi Data dulu gengs!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Flutter Magic Book",
                      style: GoogleFonts.adventPro(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                        .animate(
                          onPlay: (controller) => controller.repeat(),
                        )
                        .shake(
                          delay: 2000.ms,
                        ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    QTextField(
                      label: "Full name",
                      validator: Validator.required,
                      onChanged: (value) {
                        controller.fullName = value;
                      },
                    ),
                    QTextField(
                      label: "Email",
                      validator: Validator.email,
                      suffixIcon: Icons.email,
                      onChanged: (value) {
                        controller.email = value;
                      },
                    ),
                    QNumberField(
                      label: "Whatsapp number",
                      validator: Validator.required,
                      onChanged: (value) {
                        controller.whatsappNumber = value;
                      },
                    ),
                    const Divider(),
                    Container(
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () => controller.submitForm(),
                        child: const Text("Enter"),
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
}
