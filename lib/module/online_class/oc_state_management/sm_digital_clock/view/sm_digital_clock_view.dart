import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmDigitalClockView extends StatefulWidget {
  const SmDigitalClockView({Key? key}) : super(key: key);

  Widget build(context, SmDigitalClockController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("SmDigitalClock"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat("kk:mm:ss").format(controller.date),
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.timer.cancel(),
              child: const Text("Stop"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SmDigitalClockView> createState() => SmDigitalClockController();
}
