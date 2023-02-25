import 'package:dio/dio.dart';

class AuthService {
  static String? token;
  static String role = "";
  static Future<Map> doLogin({
    required String email,
    required String password,
  }) async {
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
    print(response.data);
    token = obj["data"]["token"];

    print("::: ${AuthService.token}");
    return response.data;
  }
}
