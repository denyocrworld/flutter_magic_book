import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/dropdown/dropdown.dart';

void main() {
  testWidgets('dropdown ...', (tester) async {
    tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              QDropdownField(
                label: "Roles",
                hint: "Your roles",
                validator: Validator.required,
                items: const [
                  {
                    "label": "Admin",
                    "value": 1,
                  },
                  {
                    "label": "Staff",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
              QDropdownField(
                label: "Roles",
                hint: "Your roles",
                validator: Validator.required,
                value: 1,
                items: const [
                  {
                    "label": "Admin",
                    "value": 1,
                  },
                  {
                    "label": "Staff",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
              Form(
                child: Column(
                  children: [
                    QDropdownField(
                      label: "Roles",
                      hint: "Your roles",
                      validator: Validator.required,
                      items: const [],
                      onChanged: (value, label) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}
