import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_movie_detail4_controller.dart';

class EdrMovieDetail4View extends StatefulWidget {
  const EdrMovieDetail4View({Key? key}) : super(key: key);

  Widget build(context, EdrMovieDetail4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrMovieDetail4"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<EdrMovieDetail4View> createState() => EdrMovieDetail4Controller();
}
