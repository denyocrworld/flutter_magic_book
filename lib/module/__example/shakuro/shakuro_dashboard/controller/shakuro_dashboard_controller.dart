import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/shakuro_dashboard_view.dart';

class ShakuroDashboardController extends State<ShakuroDashboardView>
    implements MvcController {
  static late ShakuroDashboardController instance;
  late ShakuroDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedCategoryIndex = 0;
  updateIndex(newIndex) {
    selectedCategoryIndex = newIndex;
    setState(() {});
  }

  List<Map> categories = [
    {
      "label": "All",
    },
    {
      "label": "Pizza",
      "icon": "https://cdn-icons-png.flaticon.com/512/1161/1161674.png",
    },
    {
      "label": "Burger",
      "icon": "https://cdn-icons-png.flaticon.com/512/1161/1161695.png",
    },
    {
      "label": "Drink",
      "icon": "https://cdn-icons-png.flaticon.com/512/5116/5116880.png",
    },
    {
      "label": "Snack",
      "icon": "https://cdn-icons-png.flaticon.com/512/3076/3076046.png",
    }
  ];
}
