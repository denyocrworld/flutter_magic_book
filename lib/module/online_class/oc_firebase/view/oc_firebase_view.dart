import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OcFirebaseView extends StatefulWidget {
  const OcFirebaseView({Key? key}) : super(key: key);

  Widget build(context, OcFirebaseController controller) {
    controller.view = this;
    List menuList = [
      {
        'label': 'Login',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbLoginView(),
      },
      {
        'label': 'Register',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbRegisterView(),
      },
      {
        'label': 'List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbListView(),
      },
      {
        'label': 'Order List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbOrderListView(),
      },
      {
        'label': 'Horizontal Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbHorizontalCategoryListView(),
      },
      {
        'label': 'Wrap Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbWrapCategoryListView(),
      },
      {
        'label': 'Dropdown',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbDropdownView(),
      },
      {
        'label': 'Radio',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbRadioView(),
      },
      {
        'label': 'Map',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbMapView(),
      },
      {
        'label': 'Chart',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbChartView(),
      },
      {
        'label': 'Statistic Card',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbStatisticCardView(),
      },
      {
        'label': 'Upload Image',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbUploadImageView(),
      },
      {
        'label': 'CRUD',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const FbCrudListView(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcFirebase"),
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
  }

  @override
  State<OcFirebaseView> createState() => OcFirebaseController();
}
