import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class SmThemeView extends StatefulWidget {
  const SmThemeView({Key? key}) : super(key: key);

  Widget build(context, SmThemeController controller) {
    controller.view = this;

    return Theme(
      data: controller.theme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SmTheme"),
          actions: [
            Switch(
              value: controller.darkMode,
              onChanged: (value) {
                controller.darkMode = !controller.darkMode;
                controller.setState(() {});
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                QTextField(
                  label: "Email",
                  hint: "Your email",
                  validator: Validator.email,
                  value: "demo@gmail.com",
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Password",
                  hint: "Your password",
                  obscure: true,
                  validator: Validator.required,
                  value: "123456",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 42.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 42.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login by Google"),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 300.0,
                    child: Row(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/dGcQ5bw/photo-1549692520-acc6669e2f0c-ixlib-rb-1-2.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "PRODUCTIVITY",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "3 days ago",
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
                                  "7 Skills of Highly Effective Programmers",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
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
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 300.0,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/JpdK5ch/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Pepperoni Pizza",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 10.0,
                                    child: Icon(
                                      MdiIcons.fire,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 10.0,
                                    child: Icon(
                                      Icons.thumb_up,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "256 Cal",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    "P/F/C: 12/10/31",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    "53.8 °C",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "€9",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  const Text(
                                    "€12",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const Spacer(),
                                  Transform.scale(
                                    scale: 0.8,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton.icon(
                                      icon: const Icon(MdiIcons.cart),
                                      label: const Text("Add to Cart"),
                                      style: ElevatedButton.styleFrom(),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SmThemeView> createState() => SmThemeController();
}
