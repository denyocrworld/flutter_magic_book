import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
1. Constructor Class
2. Context, diambil lewat Argument
3. DI
*/

class OcHttpRequestView extends StatefulWidget {
  const OcHttpRequestView({Key? key}) : super(key: key);

  Widget build(context, OcHttpRequestController controller) {
    controller.view = this;
    List menuList = [
      {
        'label': 'Login',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrLoginView(),
      },
      {
        'label': 'List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrListView(),
      },
      {
        'label': 'Order List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrOrderListView(),
      },
      {
        'label': 'Horizontal Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrHorizontalCategoryListView(),
      },
      {
        'label': 'Wrap Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrWrapCategoryListView(),
      },
      {
        'label': 'Dropdown',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrDropdownView(),
      },
      {
        'label': 'Radio',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrRadioView(),
      },
      {
        'label': 'Map',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrMapView(),
      },
      {
        'label': 'Chart',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrChartView(),
      },
      {
        'label': 'Statistic Card',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrStatisticCardView(),
      },
      {
        'label': 'Upload Image',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrUploadImageView(),
      },
      {
        'label': 'CRUD',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const HrCrudListView(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcHttpRequest"),
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
  State<OcHttpRequestView> createState() => OcHttpRequestController();
}
