import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class HrMapController extends State<HrMapView> implements MvcController {
  static late HrMapController instance;
  late HrMapView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Marker> markers = [
    Marker(
      point: LatLng(
        -6.1754200,
        106.827224,
      ),
      builder: (context) => const Icon(
        Icons.pin_drop,
        color: Colors.red,
        size: 24,
      ),
    ),
  ];

  doGenerate() async {
    for (var i = 1; i <= 4; i++) {
      var response = await Dio().post(
        "${AppConfig.baseUrl}/deny/api/car_locations",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "name": "F 300Y CX",
          "latitude": -6.1754200,
          "longitude": 106.827224,
        },
      );
    }
  }

  List carLocationList = [];
  getCarLocations() async {
    var response = await Dio().get(
      "${AppConfig.baseUrl}/deny/api/car_locations",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List tempCarLocationList = obj["data"];
    var index = 0;
    for (var carLocation in tempCarLocationList) {
      markers.add(Marker(
        point: LatLng(
          carLocation["latitude"],
          carLocation["longitude"] - (index + 0.000300),
        ),
        builder: (context) => const Icon(
          Icons.pin_drop,
          color: Colors.red,
          size: 24,
        ),
      ));
      index++;
    }
    setState(() {});
  }
}
