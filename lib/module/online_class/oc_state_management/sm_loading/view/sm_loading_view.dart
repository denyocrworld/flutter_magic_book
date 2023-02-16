import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/sm_loading_controller.dart';

class SmLoadingView extends StatefulWidget {
  const SmLoadingView({Key? key}) : super(key: key);

  Widget build(context, SmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SmLoading"),
        actions: const [],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Loading: ${controller.loading}",
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.update),
                    label: const Text("Update"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.updateLoadingState(),
                  ),
                  //---
                  const SizedBox(
                    height: 20.0,
                  ),
                  if (controller.loading) const CircularProgressIndicator(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  if (controller.loading)
                    Image.network(
                      "https://media.tenor.com/On7kvXhzml4AAAAj/loading-gif.gif",
                      width: 64.0,
                      height: 64.0,
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  if (controller.loading) ...[
                    Image.network(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/max_632/04de2e31234507.564a1d23645bf.gif",
                      width: 128.0,
                      height: 128.0,
                    ),
                    const Text(
                      "Loading...",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          // if (controller.loading)
          //   Container(
          //     color: Colors.black26,
          //     child: Center(
          //       child: Card(
          //         child: InkWell(
          //           onTap: () {
          //             Get.back();
          //           },
          //           child: const Padding(
          //             padding: EdgeInsets.all(8.0),
          //             child: Text("Loading..."),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }

  @override
  State<SmLoadingView> createState() => SmLoadingController();
}
