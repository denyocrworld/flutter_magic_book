import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OcStateManagementMainNavigationView extends StatefulWidget {
  const OcStateManagementMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, OcStateManagementMainNavigationController controller) {
    controller.view = this;
    List menuList = [
      {
        'label': 'Counter',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmCounterView(),
      },
      {
        'label': 'Loading',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmLoadingView(),
      },
      {
        'label': 'Visibility',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmVisibilityView(),
      },
      {
        'label': 'Enabled/Disabled',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmEnabledOrDisabledView(),
      },
      {
        'label': 'Basic Animation',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmBasicAnimationView(),
      },
      {
        'label': 'Scale Animation',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmScaleAnimationView(),
      },
      {
        'label': 'Rotate Animation',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmRotateAnimationView(),
      },
      {
        'label': 'Fade Animation',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmFadeAnimationView(),
      },
      {
        'label': 'Digital Clock',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmDigitalClockView(),
      },
      {
        'label': 'Horizontal Category List',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmHorizontalCategoryListView(),
      },
      {
        'label': 'Vertical Category List',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmVerticalCategoryListView(),
      },
      {
        'label': 'Category in Wrap',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmCategoryInWrapView(),
      },
      {
        'label': 'Cart',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmCartView(),
      },
      {
        'label': 'CRUD',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmCrudView(),
      },
      {
        'label': 'Filter List',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmFilterListView(),
      },
      {
        'label': 'Navigation',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmNavigationView(),
      },
      {
        'label': 'Scroll',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmScrollView(),
      },
      {
        'label': 'Theme',
        'icon': MdiIcons.codeBraces,
        'color': Colors.orange,
        'page': const SmThemeView(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcStateManagementMainNavigation"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: menuList.length,
                itemBuilder: (context, index) {
                  var item = menuList[index];
                  var number = index + 1;
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(item["page"]);
                      },
                      title: Text(
                        "$number. ${item["label"]}",
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("OcStateManagementMainNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<OcStateManagementMainNavigationView> createState() =>
      OcStateManagementMainNavigationController();
}
