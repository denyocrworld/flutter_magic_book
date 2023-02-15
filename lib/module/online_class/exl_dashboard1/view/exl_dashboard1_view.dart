import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ExlDashboard1View extends StatefulWidget {
  const ExlDashboard1View({Key? key}) : super(key: key);

  Widget build(context, ExlDashboard1Controller controller) {
    controller.view = this;

    rowLabel({
      required String label,
    }) {
      return Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "See all",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff59B58D),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 14.0,
            color: Color(0xff59B58D),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(),
        leadingWidth: 0.0,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/icon/icon.png",
                ),
              ),
            ),
            Text("TutorialFlutter"),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 16.0,
              backgroundColor: Color(0xff59B58D),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 160.0,
                autoPlay: true,
              ),
              items: controller.images.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  rowLabel(
                    label: "Categories",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  LayoutBuilder(builder: (context, constraint) {
                    var size = (constraint.biggest.width - 10) / 2;
                    return Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children:
                          List.generate(controller.categories.length, (index) {
                        var item = controller.categories[index];
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0,
                          ),
                          width: size,
                          decoration: const BoxDecoration(
                            color: Color(0xffC4CACC),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                6.0,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "$item",
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.chevron_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  rowLabel(
                    label: "Discounts",
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 80.0 + 160,
                    child: ListView.builder(
                      itemCount: controller.products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = controller.products[index];
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 160.0,
                                height: 160.0,
                                margin: const EdgeInsets.only(
                                  right: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      item["photo"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: const [
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: CircleAvatar(
                                        radius: 12.0,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.grey,
                                          size: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ExlDashboard1View> createState() => ExlDashboard1Controller();
}
