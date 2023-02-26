import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

void main() async {
  await initialize();

  // Get.mainTheme.value = getDefaultTheme();
  Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          // home: const FbkMainNavigationView(),
          home: const TutorialDemoView(),
          // home: const CrMainNavigationView(),
          // home: const UserListView(),
          // home: const CgListCheckerView(),
          // home: const ContohView(),
          // home: const TutorialListView(),
          // home: const MainNavigationView(),
          // home: ShakuroDashboardView(),
          // home: LoginView(),
          // home: GegeGeminkDashboardUiView(),
          // home: ContohView(),
          // home: TutorialView(),
          builder: (context, child) => debugView(
            context: context,
            child: child,
            visible: true,
          ),
        );
      },
    );
  }
}
