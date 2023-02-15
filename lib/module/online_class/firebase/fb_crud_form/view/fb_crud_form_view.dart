import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbCrudFormView extends StatefulWidget {
  final Map? item;
  const FbCrudFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  String get title {
    return item != null ? "Update" : "Create";
  }

  Widget build(context, FbCrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
              child: const Text("Save"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        validator: Validator.required,
                        value: controller.photo,
                        onChanged: (value) {
                          controller.photo = value;
                        },
                      ),
                      QTextField(
                        label: "Product Name",
                        validator: Validator.required,
                        value: controller.productName,
                        onChanged: (value) {
                          controller.productName = value;
                        },
                      ),
                      QNumberField(
                        label: "Price",
                        validator: Validator.required,
                        value: controller.price?.toString(),
                        onChanged: (value) {
                          controller.price = double.tryParse(value) ?? 0;
                          showInfoDialog("value: ${controller.price}");
                        },
                      ),
                      QMemoField(
                        label: "Description",
                        validator: Validator.required,
                        value: controller.description,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbCrudFormView> createState() => FbCrudFormController();
}
