import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cr_dashboard_controller.dart';

class CrDashboardView extends StatefulWidget {
  const CrDashboardView({Key? key}) : super(key: key);

  Widget build(context, CrDashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.location_on,
                      size: 36.0,
                      color: Color(0xffecad37),
                    ),
                    title: Text(
                      "Your location",
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    subtitle: const Text(
                      "Miranmar, San Diego",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Search Your Dream\nSuper Car to Ride",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 44.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                6.0,
                              ),
                            ),
                          ),
                          child: Center(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                              decoration: InputDecoration(
                                hintText: "Search Your Dream Car",
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey[600],
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          color: Color(0xffedae36),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.tune,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff10181e),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 4.0,
                    width: 60.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff3a4450),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          "Top Brands",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        width: 100.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[900],
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Color(0xffeeae36),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 24.0,
                                color: Color(0xffeeae36),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: controller.brands.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.brands[index];
                      return Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff272f35),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              item,
                              width: 48.0,
                              height: 48.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      )
                          .animate()
                          .fade(
                            duration: 1000.ms,
                          )
                          .slideX(
                            begin: -30,
                            duration: 1000.ms,
                          );
                    },
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          "Recommendation",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        width: 100.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[900],
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Color(0xffeeae36),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 24.0,
                                color: Color(0xffeeae36),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(controller.cars.length, (index) {
                        var item = controller.cars[index];
                        return Container(
                          width: 180.0,
                          height: 150.0,
                          margin: const EdgeInsets.only(
                            right: 12.0,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 120.0,
                                  width: 180.0,
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff272f35),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30.0,
                                      ),
                                      Text(
                                        item["name"],
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        "${item["price"]}",
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffedae36),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                transform:
                                    Matrix4.translationValues(0.0, -30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      item["photo"],
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.fitWidth,
                                    )
                                        .animate(
                                          onPlay: (controller) =>
                                              controller.repeat(),
                                        )
                                        .shake(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ).animate().fade(),
    );
  }

  @override
  State<CrDashboardView> createState() => CrDashboardController();
}
