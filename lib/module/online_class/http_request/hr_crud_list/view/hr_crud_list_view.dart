import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrCrudListView extends StatefulWidget {
  const HrCrudListView({Key? key}) : super(key: key);

  Widget build(context, HrCrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrCrudList"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const HrCrudFormView());
          await controller.getProductList();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  var item = controller.productList[index];
                  //ALT+SHIFT+D
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (detail) {},
                    confirmDismiss: (direction) async {
                      bool confirm = false;
                      await showDialog<void>(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirm'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text(
                                      'Are you sure you want to delete this item?'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[600],
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No"),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                ),
                                onPressed: () {
                                  confirm = true;
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        },
                      );
                      if (confirm) {
                        await controller.deleteProduct(item["id"]);
                        return Future.value(true);
                      }
                      return Future.value(false);
                    },
                    child: Card(
                      child: ListTile(
                        onTap: () async {
                          await Get.to(HrCrudFormView(
                            item: item,
                          ));
                          await controller.getProductList();
                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"] ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                        ),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["price"]}"),
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
  State<HrCrudListView> createState() => HrCrudListController();
}
