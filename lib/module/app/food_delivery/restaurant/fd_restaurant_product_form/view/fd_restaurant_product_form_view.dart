import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdRestaurantProductFormView extends StatefulWidget {
  final Map? item;
  const FdRestaurantProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, FdRestaurantProductFormController controller) {
    controller.view = this;

    var title = "Add product";
    if (controller.isEditMode) {
      title = "Edit product";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                label: "Product name",
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
      bottomNavigationBar: Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () => controller.doSave(),
          child: const Text("Save"),
        ),
      ),
    );
  }

  @override
  State<FdRestaurantProductFormView> createState() =>
      FdRestaurantProductFormController();
}
