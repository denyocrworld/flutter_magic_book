import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_horizontal_category_list_controller.dart';

class HrHorizontalCategoryListView extends StatefulWidget {
  const HrHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, HrHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrHorizontalCategoryList"),
        actions: [
          IconButton(
            onPressed: () => controller.doGenerate(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () => controller.loadProductCategoryList(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "${controller.categoryList.length}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
              child: ListView.builder(
                itemCount: controller.categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var item = controller.categoryList[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Chip(
                      label: Text(item["category_name"]),
                      backgroundColor: Colors.grey[500],
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
  State<HrHorizontalCategoryListView> createState() =>
      HrHorizontalCategoryListController();
}
