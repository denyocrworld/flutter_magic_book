import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbRegisterController extends State<FbRegisterView>
    implements MvcController {
  static late FbRegisterController instance;
  late FbRegisterView view;

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
    //Alt+SHIFT+I ==> Smart Import
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      showInfoDialog("Signup Success!");
    } on Exception catch (err) {
      print(err);
      showInfoDialog("Signup Failed!");
    }
  }

  //Controller
  //Service
}
