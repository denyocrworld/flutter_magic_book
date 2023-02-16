import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_horizontal_category_list_controller.dart';

class SmHorizontalCategoryListView extends StatefulWidget {
  const SmHorizontalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, SmHorizontalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmHorizontalCategoryList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                controller.selectedItem,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //ALT+SHIFT+H
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  itemCount: controller.categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.categoryList[index];
                    bool isSelected = controller.selectedItem == item;

                    return Container(
                      padding: const EdgeInsets.all(4.0),
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              isSelected ? Colors.orange : Colors.grey[300],
                        ),
                        onPressed: () => controller.updateCategory(item),
                        child: Text("$item"),
                      ),
                    );
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      child: InkWell(
                        onTap: () => controller.updateCategory(item),
                        child: Chip(
                          backgroundColor:
                              isSelected ? Colors.black : Colors.white,
                          label: Text(
                            "$item",
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SmHorizontalCategoryListView> createState() =>
      SmHorizontalCategoryListController();
}
