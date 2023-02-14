import 'package:flutter/material.dart';

import 'core.dart';

class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  @override
  State<ContohView> createState() => _ContohViewState();
}

class _ContohViewState extends State<ContohView> {
  int counter = 0;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "loading: $loading",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      counter++;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "$counter",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (counter == 0) return;
                      counter--;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  if (loading == true) {
                    loading = false;
                  } else {
                    loading = true;
                  }
                  setState(() {});
                },
                child: const Text("Update"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              if (loading == true) const CircularProgressIndicator(),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: loading ? 10 : 200,
                width: loading ? 10 : 100,
                decoration: BoxDecoration(
                  color: loading ? Colors.red : Colors.blue,
                ),
              ),
              const Divider(),
              if (loading == false)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        QTextField(
                          label: "Email",
                          hint: "Your email",
                          validator: Validator.email,
                          suffixIcon: Icons.email,
                          value: "demo@gmail.com",
                          onChanged: (value) {},
                        ),
                        QTextField(
                          label: "Password",
                          hint: "Your password",
                          obscure: true,
                          validator: Validator.required,
                          suffixIcon: Icons.password,
                          value: "123456",
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
