import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_statistic_card_controller.dart';

class HrStatisticCardView extends StatefulWidget {
  const HrStatisticCardView({Key? key}) : super(key: key);

  Widget build(context, HrStatisticCardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrStatisticCard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Products",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${controller.productCount}",
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "+36%",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.list,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HrStatisticCardView> createState() => HrStatisticCardController();
}
