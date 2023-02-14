import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/hr_wrap_category_list_controller.dart';

class HrWrapCategoryListView extends StatefulWidget {
  const HrWrapCategoryListView({Key? key}) : super(key: key);

  Widget build(context, HrWrapCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrWrapCategoryList"),
        actions: [
          IconButton(
            onPressed: () => controller.loadProductCategoryList(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  controller.categoryList.length,
                  (index) {
                    var item = controller.categoryList[index];
                    return Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Text(item["category_name"]),
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
  State<HrWrapCategoryListView> createState() => HrWrapCategoryListController();
}
