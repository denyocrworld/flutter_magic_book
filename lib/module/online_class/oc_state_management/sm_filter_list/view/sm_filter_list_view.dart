import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_filter_list_controller.dart';

class SmFilterListView extends StatefulWidget {
  const SmFilterListView({Key? key}) : super(key: key);

  Widget build(context, SmFilterListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmFilterList"),
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
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "What are you craving?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {},
                      onChanged: (value) => controller.updateSearch(value),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var productName =
                        item["product_name"].toString().toLowerCase();

                    if (!productName.contains(search)) {
                      return Container();
                    }
                  }

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
  State<SmFilterListView> createState() => SmFilterListController();
}
