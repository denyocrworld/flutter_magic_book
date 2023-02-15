import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/exl_login1_controller.dart';

class ExlLogin1View extends StatefulWidget {
  const ExlLogin1View({Key? key}) : super(key: key);

  Widget build(context, ExlLogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome to Super Apps",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Unlock the power of mobile development with Dart and Flutter!",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 44.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.grey[600],
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 44.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      6.0,
                    ),
                  ),
                ),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.password,
                        color: Colors.grey[600],
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff59B58D),
                  ),
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff59B58D),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffCDCDCD),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 24.0,
                        color: Colors.grey[600],
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
  State<ExlLogin1View> createState() => ExlLogin1Controller();
}
