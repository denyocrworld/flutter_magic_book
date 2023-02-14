import 'package:flutter/material.dart';

class QScaffold extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;

  const QScaffold({
    Key? key,
    required this.body,
    this.appBar,
  }) : super(key: key);

  @override
  State<QScaffold> createState() => _QScaffoldState();
}

class _QScaffoldState extends State<QScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 380.0,
            ),
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: widget.body,
          ),
        ),
      ),
    );
  }
}
