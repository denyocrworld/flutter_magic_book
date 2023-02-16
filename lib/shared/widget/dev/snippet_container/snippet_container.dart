// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SnippetContainer extends StatelessWidget {
  final String snippet;
  const SnippetContainer(this.snippet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
          ),
          child: Row(
            children: [
              Card(
                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  child: Text(
                    snippet,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
