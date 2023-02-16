import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbLoginController extends State<FbLoginView> implements MvcController {
  static late FbLoginController instance;
  late FbLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  doLogin() async {
    try {
      showLoading();

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      hideLoading();
      //fireuser
      print(FirebaseAuth.instance.currentUser!.uid);
      showInfoDialog("Berhasil login!");
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Gagal login!");
    }
  }

  doGuestLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      showInfoDialog("Berhasil login!");
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Gagal login!");
    }
  }

  doGoogleLogin() async {
    try {
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
        showInfoDialog("Berhasil login!");
      } catch (_) {}
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Gagal login!");
    }
  }
}
