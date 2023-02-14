import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrLoginView extends StatefulWidget {
  const HrLoginView({Key? key}) : super(key: key);

  Widget build(context, HrLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.name),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.userList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Map item = controller.userList[index];

                  return ListTile(
                    title: Text("${item["product_name"]}"),
                    subtitle: Text("${item["price"]}"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 24.0,
                      ),
                    ),
                  );

                  return Column(
                    children: [
                      Text(
                        "$item",
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doSomething(),
                child: const Text("Get Users"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        value: null,
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doLogin(),
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
  State<HrLoginView> createState() => HrLoginController();
}
