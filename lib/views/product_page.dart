import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hng_timbu_app/controllers/product_page_controller.dart';
import 'package:hng_timbu_app/models/get_products_model.dart';
import 'package:hng_timbu_app/utils/colors.dart';
import 'package:hng_timbu_app/views/prodCardWidget.dart';
import 'package:hng_timbu_app/views/product_details.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});
  final products = [];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductPageController());
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('SHOPPERS',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black),
      body: FutureBuilder(
          future: controller.getProduct(),
          builder: (context, AsyncSnapshot<GetProductsModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting &&
                snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    colorsClass.orangeColor,
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              final getProductList = snapshot.data!.items;
              return Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: getProductList.length,
                    itemBuilder: (context, index) {
                      final products = getProductList[index];
                      return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsPage(products: products),
                              )),
                          child: ProductCardWidget(
                              imageCard: products.productImage[0],
                              cardTitle: products.name,
                              cardPrice: products.prices));
                    }),
              );
            } else {
              return const Center(child: Text('Empty'));
            }
          }),
    );
  }
}
