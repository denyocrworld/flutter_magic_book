import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/edr_movie_detail5_view.dart';

class EdrMovieDetail5Controller extends State<EdrMovieDetail5View>
    implements MvcController {
  static late EdrMovieDetail5Controller instance;
  late EdrMovieDetail5View view;

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
