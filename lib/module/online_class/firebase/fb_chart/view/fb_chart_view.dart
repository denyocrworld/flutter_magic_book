import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/fb_chart_controller.dart';

class FbChartView extends StatefulWidget {
  const FbChartView({Key? key}) : super(key: key);

  Widget build(context, FbChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbChart"),
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //chart_
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("sales")
                    .orderBy("created_at")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  final List<Map> items = [];
                  for (var doc in snapshot.data!.docs) {
                    Map<String, dynamic> data =
                        (doc.data() as Map<String, dynamic>);
                    items.add(
                      {
                        "year": data["year"],
                        "sales": data["sales"],
                      },
                    );
                  }

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        // Renders line chart
                        LineSeries<Map, int>(
                          dataSource: items,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),

              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": 2018,
                      "sales": 40,
                    },
                    {
                      "year": 2019,
                      "sales": 90,
                    },
                    {
                      "year": 2020,
                      "sales": 30,
                    },
                    {
                      "year": 2021,
                      "sales": 80,
                    },
                    {
                      "year": 2022,
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        // Renders line chart
                        LineSeries<Map, int>(
                          dataSource: chartData,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": 2018,
                      "sales": 40,
                    },
                    {
                      "year": 2019,
                      "sales": 90,
                    },
                    {
                      "year": 2020,
                      "sales": 30,
                    },
                    {
                      "year": 2021,
                      "sales": 80,
                    },
                    {
                      "year": 2022,
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        BarSeries<Map, int>(
                          dataSource: chartData,
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final List<Map> chartData = [
                    {
                      "year": "Jan",
                      "sales": 40,
                    },
                    {
                      "year": "Feb",
                      "sales": 90,
                    },
                    {
                      "year": "Mar",
                      "sales": 30,
                    },
                    {
                      "year": "Apr",
                      "sales": 80,
                    },
                    {
                      "year": "May",
                      "sales": 90,
                    }
                  ];

                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCircularChart(
                      legend: Legend(isVisible: true),
                      series: <CircularSeries>[
                        PieSeries<Map, String>(
                          dataSource: chartData,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                          xValueMapper: (Map data, _) => data["year"],
                          yValueMapper: (Map data, _) => data["sales"],
                        )
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
  State<FbChartView> createState() => FbChartController();
}
