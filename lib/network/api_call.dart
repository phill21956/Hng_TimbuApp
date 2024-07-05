import 'package:flutter/material.dart';
import 'package:hng_timbu_app/models/get_prod_details_model.dart';
import 'package:hng_timbu_app/models/get_products_model.dart';
import 'package:hng_timbu_app/utils/constants.dart';
import 'package:hng_timbu_app/utils/toast.dart';
import 'package:http/http.dart' as http;

class ApiCalls {
  Future<GetProductsModel?> httpGetProducts() async {
    try {
      var res = await http
          .get(Uri.parse(
              "$baseUrl?organization_id=$organizationId&Appid=$apiId&Apikey=$apiKey"))
          .timeout(const Duration(seconds: 60));
      if (res.statusCode == 200) {
        final GetProductsModel getProducts = getProductsModelFromJson(res.body);
        return getProducts;
      } else {
        print('Failed to load products: ${res.statusCode}');
        toast(
            title: 'Attention!!!',
            'Failed to load products: ${res.statusCode}',
            color: Colors.red);
        return null;
      }
    } catch (e) {
      print('error-$e');
      toast(title: 'Attention!!!', '$e', color: Colors.red);
      return null;
    }
  }

  Future<GetProductDetailsModel?> httpGetProductDetails(
      String productId) async {
    try {
      var res = await http
          .get(Uri.parse(
              "$baseUrl/$productId?organization_id=$organizationId&Appid=$apiId&Apikey=$apiKey"))
          .timeout(const Duration(seconds: 60));
      if (res.statusCode == 200) {
        final getProdDetails = getProductDetailsModelFromJson(res.body);
        return getProdDetails;
      } else {
        print('Failed to load products: ${res.statusCode}');
        return null;
      }
    } catch (e) {
      print('error-$e');
      return null;
    }
  }
}
