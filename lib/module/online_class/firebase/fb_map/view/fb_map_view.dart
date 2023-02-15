import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class FbMapView extends StatefulWidget {
  const FbMapView({Key? key}) : super(key: key);

  Widget build(context, FbMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbMap"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doGenerate(),
              child: const Text("Generate"),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection("customers").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return const Text("Error");
            if (snapshot.data == null) return Container();
            if (snapshot.data!.docs.isEmpty) {
              return const Text("No Data");
            }
            final data = snapshot.data!;
            List<Marker> markers = [];
            for (var doc in snapshot.data!.docs) {
              Map<String, dynamic> data = (doc.data() as Map<String, dynamic>);
              markers.add(
                Marker(
                  point: LatLng(
                    data["latitude"],
                    data["longitude"],
                  ),
                  builder: (context) => const Icon(
                    Icons.pin_drop,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
              );
            }
            return Builder(
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
                        markers: markers,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  State<FbMapView> createState() => FbMapController();
}
