import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hyper_ui/core.dart';

class FdLoginController extends State<FdLoginView> implements MvcController {
  static late FdLoginController instance;
  late FdLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doCreateAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "ficmania@mailinator.com",
        password: "123456",
      );
      showInfoDialog("Berhasil membuat akun!");
    } on Exception {
      showInfoDialog("Gagal membuat akun!");
    }
  }

  doEmailLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "ficmania@mailinator.com",
        password: "123456",
      );
      Get.offAll(const FdCustomerMainNavigationView());
    } on Exception {
      showInfoDialog("Wrong email or password!");
    }
  }

  doAnonymousLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      Get.offAll(const FdCustomerMainNavigationView());
    } on Exception catch (err) {
      print(err);
    }
  }

  doCustomerLogin() async {
    //fire_
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      //TODO: on login success
      //------------------
      Get.offAll(const FdCustomerMainNavigationView());
    } catch (_) {}
  }

  doDriverLogin() async {
    Get.offAll(const FdDriverMainNavigationView());
  }

  doRestaurantLogin() async {
    Get.offAll(const FdRestaurantMainNavigationView());
  }

  doAdminLogin() async {
    Get.offAll(const FdAdminMainNavigationView());
  }
}
