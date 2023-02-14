import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrCrudFormView extends StatefulWidget {
  final Map? item;
  const HrCrudFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, HrCrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrCrudForm"),
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
                value: item?["photo"],
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Product Name",
                validator: Validator.required,
                value: item?["product_name"],
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: item?["price"]?.toString(),
                onChanged: (value) {
                  print(">>> $value");
                  controller.price = double.tryParse(value) ?? 0.0;
                  print("::: ${controller.price}");
                },
              ),
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: item?["description"],
                onChanged: (value) {
                  controller.description = value;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
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
  State<HrCrudFormView> createState() => HrCrudFormController();
}
