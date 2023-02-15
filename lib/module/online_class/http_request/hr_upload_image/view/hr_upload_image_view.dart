import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrUploadImageView extends StatefulWidget {
  const HrUploadImageView({Key? key}) : super(key: key);

  Widget build(context, HrUploadImageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrUploadImage"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                hint: "Your photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      controller.imageUrl ??
                          "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                  children: [
                    if (controller.uploading)
                      const Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.upload),
                label: const Text("Upload"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doUpload(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HrUploadImageView> createState() => HrUploadImageController();
}
