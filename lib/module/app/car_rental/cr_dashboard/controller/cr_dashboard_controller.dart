import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cr_dashboard_view.dart';

class CrDashboardController extends State<CrDashboardView>
    implements MvcController {
  static late CrDashboardController instance;
  late CrDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List brands = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/2048px-BMW_logo_%28gray%29.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Mitsubishi-logo.png/1024px-Mitsubishi-logo.png",
    "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Lamborghini_Logo.svg/1200px-Lamborghini_Logo.svg.png",
  ];

  List cars = [
    {
      "name": "Lamborghini Urus",
      "photo": "https://freepngimg.com/save/31216-car-transparent/624x300",
      "price": 520,
    },
    {
      "name": "BMW M7 Series",
      "photo":
          "https://www.bmw.co.id/content/dam/bmw/common/all-models/7-series/sedan/2021/navigation/bmw-7-series-sedan-modelfinder-stage2-890x501.png",
      "price": 520,
    }
  ];
}
