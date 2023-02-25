import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdLoginView extends StatefulWidget {
  const FdLoginView({Key? key}) : super(key: key);

  Widget build(context, FdLoginController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    "Food Delivery 1.0",
                    style: GoogleFonts.akronim(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Create account"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () => controller.doCreateAccount(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login Anonymously"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () => controller.doAnonymousLogin(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login by Email"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () => controller.doEmailLogin(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login as Customer"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () => controller.doCustomerLogin(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login as Driver"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () => controller.doDriverLogin(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login as Restaurant"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () => controller.doRestaurantLogin(),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 38.0,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.loginVariant),
                      label: const Text("Login as Admin"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () => controller.doAdminLogin(),
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
  State<FdLoginView> createState() => FdLoginController();
}
