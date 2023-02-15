import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_movie_detail6_controller.dart';

class EdrMovieDetail6View extends StatefulWidget {
  const EdrMovieDetail6View({Key? key}) : super(key: key);

  Widget build(context, EdrMovieDetail6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrMovieDetail6"),
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
  State<EdrMovieDetail6View> createState() => EdrMovieDetail6Controller();
}
