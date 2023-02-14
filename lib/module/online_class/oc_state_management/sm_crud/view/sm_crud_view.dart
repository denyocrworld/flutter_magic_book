import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmCrudView extends StatefulWidget {
  const SmCrudView({Key? key}) : super(key: key);

  Widget build(context, SmCrudController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmCrud"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.add(),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: const EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["photo"],
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              color: Colors.blue[400],
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green[800],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    "PROMO",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${item["product_name"]}",
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () => controller.delete(item),
                                      icon: const Icon(
                                        Icons.cancel,
                                        size: 16.0,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () => controller.edit(item),
                                      icon: const Icon(
                                        Icons.edit,
                                        size: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "8.1 km",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    const Icon(
                                      Icons.circle,
                                      size: 4.0,
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange[400],
                                      size: 16.0,
                                    ),
                                    const Text(
                                      "4.8",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "Bakery & Cake . Breakfast . Snack",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "${item["price"]} USD",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
  State<SmCrudView> createState() => SmCrudController();
}
