import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/shakuro_product_detail_view.dart';

class ShakuroProductDetailController extends State<ShakuroProductDetailView>
    implements MvcController {
  static late ShakuroProductDetailController instance;
  late ShakuroProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
}
