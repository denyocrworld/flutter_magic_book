import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkWpmView extends StatefulWidget {
  const FbkWpmView({Key? key}) : super(key: key);

  Widget build(context, FbkWpmController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkWpm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                "WPM: ${controller.word}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Seconds: ${controller.seconds}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  Text(
                    "${FbkWpmService.words[controller.currentIndex]}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "${FbkWpmService.words[controller.currentIndex + 1]}",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${FbkWpmService.words[controller.currentIndex + 2]}",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${FbkWpmService.words[controller.currentIndex + 3]}",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (controller.seconds < 60)
                QTextField(
                  id: "input",
                  label: "",
                  validator: Validator.required,
                  value: "",
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    controller.validate(value);
                  },
                ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 200.0,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () => controller.restart(),
                  child: const Text("Restart"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkWpmView> createState() => FbkWpmController();
}
