import 'package:dio/dio.dart';
import '../auth_service/auth_service.dart';

class ProductService {
  static Future<List> getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/deny/api/products?page=2",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "bearer ${AuthService.token}",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  static deleteProduct(int id) async {
    var response = await Dio().delete(
      "https://capekngoding.com/deny/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "bearer ${AuthService.token}",
        },
      ),
    );
    print(response.statusCode);
  }

  static addProduct({
    String? photo,
    String? productName,
    double? price,
    String? description,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "bearer ${AuthService.token}",
        },
      ),
      data: {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "description": description,
      },
    );
    Map obj = response.data;
  }

  static updateProduct({
    required int id,
    String? photo,
    String? productName,
    double? price,
    String? description,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "bearer ${AuthService.token}",
        },
      ),
      data: {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "description": description,
      },
    );
    Map obj = response.data;
  }
}
