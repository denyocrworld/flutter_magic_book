import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hyper_ui/service/product_service/product_upload_service.dart';

class ProductService with ProductUploadService {
  //dio_
  static Future<Response?> getProductsWithResponse({
    int page = 1,
    String search = "",
  }) async {
    try {
      var response = await Dio().get(
        "https://capekngoding.com/YOURNAME/api/products?page=$page&search=$search",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "bearer token",
          },
        ),
      );

      return response; // List
    } on Exception catch (err) {
      print(err);
    }
    return null;
  }

  static Future<List> getProducts({
    int page = 1,
    String search = "",
  }) async {
    try {
      var response = await Dio().get(
        "https://capekngoding.com/YOURNAME/api/products?page=$page&search=$search",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "bearer token",
          },
        ),
      );
      Map obj = response.data;
      return obj["data"]; // List
    } on Exception catch (err) {
      print(err);
      return [];
    }
  }

  static Future<Map> addProduct(Map product) async {
    var response = await Dio().post(
      "https://capekngoding.com/YOURNAME/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: product,
    );
    Map obj = response.data;
    return obj;
  }

  static Future<Map> updateProduct({
    required int id,
    required Map data,
  }) async {
    var response = await Dio().post(
      "https://capekngoding.com/YOURNAME/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: data,
    );
    Map obj = response.data;
    return obj;
  }

  static Future<Map> deleteProduct({
    required int id,
  }) async {
    var response = await Dio().delete(
      "https://capekngoding.com/YOURNAME/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj;
  }

  static uploadFile(String filePath) async {
    //get_image_gallery

    //dio_upload
    final formData = FormData.fromMap({
      'image': MultipartFile.fromBytes(
        File(filePath).readAsBytesSync(),
        filename: "upload.jpg",
      ),
    });

    var res = await Dio().post(
      'https://api.imgbb.com/1/upload?key=b55ef3fd02b80ab180f284e479acd7c4',
      data: formData,
    );

    var data = res.data["data"];
    var url = data["url"];
    return url;
  }
}
