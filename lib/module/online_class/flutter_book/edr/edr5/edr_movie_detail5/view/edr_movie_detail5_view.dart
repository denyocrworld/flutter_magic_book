import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_movie_detail5_controller.dart';

class EdrMovieDetail5View extends StatefulWidget {
  const EdrMovieDetail5View({Key? key}) : super(key: key);

  Widget build(context, EdrMovieDetail5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrMovieDetail5"),
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
  State<EdrMovieDetail5View> createState() => EdrMovieDetail5Controller();
}
