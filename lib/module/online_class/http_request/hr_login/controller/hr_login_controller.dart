import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrLoginController extends State<HrLoginView> implements MvcController {
  static late HrLoginController instance;
  late HrLoginView view;

  // String? name;
  late String name;

  @override
  void initState() {
    instance = this;
    name = mainStorage.get("name") ?? "Deny";
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  doLogin() async {
    print("email : $email");
    print("password : $password");

    var response = await Dio().post(
      "https://capekngoding.com/deny/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": email,
        "password": password,
      },
    );
    Map obj = response.data;
    print(obj);

    if (obj["success"] == true) {
      //berhasil login
      showInfoDialog("Berhasil login!");
    } else {
      //gagal login
      showInfoDialog("Gagal login!");
    }
  }

  doSomething() async {
    // await createProduct();
    // await deleteProduct(4);
    // await updateProduct(1, {
    //   "product_name": "Kopi Moccacino",
    // });
    await getProducts();
  }

  createProduct() async {
    var response = await Dio().post(
      "https://capekngoding.com/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": "JR SUPER 12",
        "price": 33,
        "description": "-",
      },
    );
    Map obj = response.data;
  }

  deleteProduct(int id) async {
    var response = await Dio().delete(
      "https://capekngoding.com/deny/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
  }

  updateProduct(int id, Map data) async {
    var response = await Dio().post(
      "https://capekngoding.com/deny/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: data,
    );
    Map obj = response.data;
  }

  List userList = [];
  getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    print("Response:");
    print(obj);
    userList = obj["data"];
    setState(() {});
  }
}
