import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdProfileController extends State<FdProfileView>
    implements MvcController {
  static late FdProfileController instance;
  late FdProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Get.offAll(const FdLoginView());
  }

  String get currentUser {
    if (FirebaseAuth.instance.currentUser!.isAnonymous) return "Guest";
    return FirebaseAuth.instance.currentUser!.displayName ?? "-";
  }

  sendVerificationCode() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    showInfoDialog("Sent!");
  }
}
