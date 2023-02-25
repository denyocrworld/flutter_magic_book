import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_profile_controller.dart';

User get currentUser {
  return FirebaseAuth.instance.currentUser!;
}

class FdProfileView extends StatefulWidget {
  const FdProfileView({Key? key}) : super(key: key);

  Widget build(context, FdProfileController controller) {
    controller.view = this;

    //fire_user

    return Scaffold(
      appBar: AppBar(
        title: const Text("FdProfile"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //fire_user
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  currentUser.photoURL ??
                      "https://i.ibb.co/S32HNjD/no-image.jpg",
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                controller.currentUser,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                currentUser.email ?? "-",
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                currentUser.uid,
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                "emaiLVerified: ${currentUser.emailVerified}",
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.sendVerificationCode(),
                child: const Text("Send verification"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FdProfileView> createState() => FdProfileController();
}
