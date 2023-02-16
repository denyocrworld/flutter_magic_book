import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmNavigationView extends StatefulWidget {
  const SmNavigationView({Key? key}) : super(key: key);

  Widget build(context, SmNavigationController controller) {
    controller.view = this;

    /*
   TODO: Implement this @ controller
   int selectedIndex = 0;
   updateIndex(int newIndex) {
   selectedIndex = newIndex;
   setState(() {});
   }
   */
    return Scaffold(
      appBar: AppBar(
        title: const Text("SmNavigation"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  AwesomeMenu(
                    menuList: const [
                      "Dashboard",
                      "Order",
                      "Favorite",
                      "Profile",
                    ],
                    children: [
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Builder(
                    builder: (context) {
                      return Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Row(
                            children: List.generate(
                          4,
                          (index) {
                            return Expanded(
                              child: InkWell(
                                onTap: () => controller.updateIndex(index),
                                child: Center(
                                  child: Text(
                                    "Menu ${index + 1}",
                                    style: TextStyle(
                                      color: controller.selectedIndex == index
                                          ? Colors.white
                                          : Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(0),
                            child: Center(
                              child: Text(
                                "Menu 1",
                                style: TextStyle(
                                  color: controller.selectedIndex == 0
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(1),
                            child: Center(
                              child: Text(
                                "Menu 2",
                                style: TextStyle(
                                  color: controller.selectedIndex == 1
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(2),
                            child: Center(
                              child: Text(
                                "Menu 3",
                                style: TextStyle(
                                  color: controller.selectedIndex == 2
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(3),
                            child: Center(
                              child: Text(
                                "Menu 4",
                                style: TextStyle(
                                  color: controller.selectedIndex == 3
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(0),
                            child: Center(
                              child: Text(
                                "Menu 1",
                                style: TextStyle(
                                  color: controller.selectedIndex == 0
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(1),
                            child: Center(
                              child: Text(
                                "Menu 2",
                                style: TextStyle(
                                  color: controller.selectedIndex == 1
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(2),
                            child: Center(
                              child: Text(
                                "Menu 3",
                                style: TextStyle(
                                  color: controller.selectedIndex == 2
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => controller.updateIndex(3),
                            child: Center(
                              child: Text(
                                "Menu 4",
                                style: TextStyle(
                                  color: controller.selectedIndex == 3
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
            child: DefaultTabController(
              length: 4,
              initialIndex: controller.selectedIndex,
              child: Scaffold(
                body: IndexedStack(
                  index: controller.selectedIndex,
                  children: [
                    Container(
                      color: Colors.red[100],
                    ),
                    Container(
                      color: Colors.green[100],
                    ),
                    Container(
                      color: Colors.blue[100],
                    ),
                    Container(
                      color: Colors.purple[100],
                    ),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.selectedIndex,
                  onTap: (newIndex) => controller.updateIndex(newIndex),
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.dashboard,
                      ),
                      label: "Dashboard",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.list,
                      ),
                      label: "Order",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                      ),
                      label: "Favorite",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: "User",
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<SmNavigationView> createState() => SmNavigationController();
}
