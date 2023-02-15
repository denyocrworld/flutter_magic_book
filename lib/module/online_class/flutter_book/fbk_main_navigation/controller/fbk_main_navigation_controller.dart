import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationController extends State<FbkMainNavigationView>
    implements MvcController {
  static late FbkMainNavigationController instance;
  late FbkMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String fullName = "";
  String email = "";
  String whatsappNumber = "";

  submitForm() async {
    if (fullName.isEmpty || email.isEmpty || whatsappNumber.isEmpty) {
      showInfoDialog("Data tidak lengkap!");
      return;
    }

    mainStorage.put("eprofile_name", fullName);
    mainStorage.put("eprofile_email", email);
    mainStorage.put("eprofile_whatsapp", whatsappNumber);
    setState(() {});
  }
}
