import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../model/product.dart';

List<Product> productList = [];

  fetchProduct() async {
  try {
    final response = await http.get(
        Uri.parse("https://5f210aa9daa42f001666535e.mockapi.io/api/products"));
    if (kDebugMode) {
      print(response.body);
    }

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (int i = 0; i < data.length; i++) {
        Map<String, dynamic> products = data[i];
        Product model = Product.fromJson(products);
        productList.add(model);

      }
      return productList;

    } return productList;
  } catch (e) {
    print(e);
    throw Exception(e);
  }
}




