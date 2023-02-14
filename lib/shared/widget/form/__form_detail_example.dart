import 'package:flutter/material.dart';

import '__form_example.dart';

class FormDetailExampleView extends StatefulWidget {
  const FormDetailExampleView({Key? key}) : super(key: key);

  @override
  State<FormDetailExampleView> createState() => _FormDetailExampleViewState();
}

class _FormDetailExampleViewState extends State<FormDetailExampleView> {
  Widget ItemValue(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (value is String)
            Expanded(
              child: Text(
                value.isEmpty ? "FAILED" : value,
                style: TextStyle(
                  fontSize: 12.0,
                  color: value.isEmpty ? Colors.red : Colors.green,
                ),
              ),
            ),
          if (value is! String)
            Expanded(
              child: Text(
                "$value",
                style: TextStyle(
                  fontSize: 12.0,
                  color: value == -1 ? Colors.red : Colors.green,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var form = FormExampleViewState.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Detail (TEST)"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ItemValue("email", form.email),
              ItemValue("password", form.password),
              ItemValue("age", form.age),
              ItemValue("address", form.address),
              ItemValue("gender", form.gender),
              ItemValue("footballClub", form.footballClub),
              ItemValue("membership", form.membership),
              ItemValue("role", form.role),
              ItemValue("favoriteEmployee", form.favoriteEmployee),
              ItemValue("staff", form.staff),
            ],
          ),
        ),
      ),
    );
  }
}
