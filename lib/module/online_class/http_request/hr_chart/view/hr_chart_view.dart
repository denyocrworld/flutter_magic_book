import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/hr_chart_controller.dart';

class HrChartView extends StatefulWidget {
  const HrChartView({Key? key}) : super(key: key);

  Widget build(context, HrChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrChart"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        AreaSeries<Map, int>(
                          dataSource: controller.sales,
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
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        BarSeries<Map, int>(
                          dataSource: controller.sales,
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
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCircularChart(
                      legend: Legend(isVisible: true),
                      series: <CircularSeries>[
                        PieSeries<Map, String>(
                          dataSource: controller.sales,
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                          xValueMapper: (Map data, _) =>
                              data["year"].toString(),
                          yValueMapper: (Map data, _) => data["sales"],
                        )
                      ],
                    ),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        ScatterSeries<Map, int>(
                          dataSource: controller.sales,
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
                  return Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(12.0),
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        StepLineSeries<Map, int>(
                          dataSource: controller.sales,
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
  State<HrChartView> createState() => HrChartController();
}
