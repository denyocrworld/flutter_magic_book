import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/imran_product_detail_view.dart';

class ImranProductDetailController extends State<ImranProductDetailView>
    implements MvcController {
  static late ImranProductDetailController instance;
  late ImranProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedColorIndex = 0;
  updateSelectedColorIndex(int newIndex) {
    selectedColorIndex = newIndex;
    setState(() {});
  }

  List colors = [
    Colors.grey,
    Colors.green,
    Colors.brown,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.cyanAccent,
  ];
}
