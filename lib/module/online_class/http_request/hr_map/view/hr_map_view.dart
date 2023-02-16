import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class HrMapView extends StatefulWidget {
  const HrMapView({Key? key}) : super(key: key);

  Widget build(context, HrMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrMap"),
        actions: [
          IconButton(
            onPressed: () => controller.doGenerate(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.getCarLocations(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //map_fluttermap
              /*
              TODO: import this lines
              import 'package:latlong2/latlong.dart';
              */
              if (controller.markers.isNotEmpty)
                Builder(
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(
                            -6.1754234,
                            106.827224,
                          ),
                          zoom: 16,
                          interactiveFlags:
                              InteractiveFlag.all - InteractiveFlag.rotate,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName:
                                'dev.fleaflet.flutter_map.example',
                          ),
                          MarkerLayer(
                            markers: controller.markers,
                          ),
                        ],
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HrMapView> createState() => HrMapController();
}
