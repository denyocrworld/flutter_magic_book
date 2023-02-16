import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_vertical_category_list_controller.dart';

class SmVerticalCategoryListView extends StatefulWidget {
  const SmVerticalCategoryListView({Key? key}) : super(key: key);

  Widget build(context, SmVerticalCategoryListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmVerticalCategoryList"),
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
            //ALT+SHIFT+H
            Expanded(
              child: ListView.builder(
                itemCount: controller.categoryList.length,
                itemBuilder: (context, index) {
                  var item = controller.categoryList[index];
                  bool isSelected = controller.selectedItem == item;

                  return InkWell(
                    onTap: () => controller.updateCategory(item),
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 300),
                      turns: (isSelected ? 2 : 0) / 360,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 900),
                        opacity: isSelected ? 1.0 : 0.6,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          height: isSelected ? 100 : 50.0,
                          margin: const EdgeInsets.only(
                            bottom: 12.0,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1671726805768-575f88de945a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "$item",
                                  style: TextStyle(
                                    color:
                                        isSelected ? Colors.red : Colors.white,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
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
    );
  }

  @override
  State<SmVerticalCategoryListView> createState() =>
      SmVerticalCategoryListController();
}
