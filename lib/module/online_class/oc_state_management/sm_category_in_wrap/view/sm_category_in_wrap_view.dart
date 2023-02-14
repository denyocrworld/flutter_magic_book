import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_category_in_wrap_controller.dart';

class SmCategoryInWrapView extends StatefulWidget {
  const SmCategoryInWrapView({Key? key}) : super(key: key);

  Widget build(context, SmCategoryInWrapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmCategoryInWrap"),
        actions: const [],
      ),
      body: Container(
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
            Wrap(
              children: List.generate(
                controller.categoryList.length,
                (index) {
                  var item = controller.categoryList[index];
                  bool isSelected = controller.selectedItem == item;

                  return InkWell(
                    onTap: () => controller.updateCategory(item),
                    child: Card(
                      color: isSelected ? Colors.orange : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("$item"),
                      ),
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
  State<SmCategoryInWrapView> createState() => SmCategoryInWrapController();
}
