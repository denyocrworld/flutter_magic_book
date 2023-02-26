import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CrMainNavigationView extends StatefulWidget {
  const CrMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, CrMainNavigationController controller) {
    controller.view = this;

    /*
   TODO: Implement this @ controller
   int selectedIndex = 0;
   updateIndex(int newIndex) {
   selectedIndex = newIndex;
   setState(() {});
   }
   */
    return Theme(
      data: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff272f35),
          selectedItemColor: Color(0xffedae38),
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Color(0xff081016),
          ),
          bodyMedium: TextStyle(
            color: Color(0xff081016),
          ),
          bodyLarge: TextStyle(
            color: Color(0xff081016),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Color(0xff081016),
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
          iconTheme: IconThemeData(
            color: Color(0xff081016),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xff081016),
        ),
      ),
      child: DefaultTabController(
        length: 4,
        initialIndex: controller.selectedIndex,
        child: Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex,
            children: [
              const CrDashboardView(),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.homeCircle,
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.file,
                ),
                label: "Order",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.bell,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin_circle,
                ),
                label: "User",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CrMainNavigationView> createState() => CrMainNavigationController();
}
