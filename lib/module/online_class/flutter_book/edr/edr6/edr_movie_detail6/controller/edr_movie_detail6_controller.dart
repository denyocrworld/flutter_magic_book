import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_movie_detail6_view.dart';

class EdrMovieDetail6Controller extends State<EdrMovieDetail6View>
    implements MvcController {
  static late EdrMovieDetail6Controller instance;
  late EdrMovieDetail6View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
