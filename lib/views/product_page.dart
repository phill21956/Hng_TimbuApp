import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hng_timbu_app/controllers/product_page_controller.dart';
import 'package:hng_timbu_app/models/get_products_model.dart';
import 'package:hng_timbu_app/utils/constants.dart';
import 'package:hng_timbu_app/views/prodCardWidget.dart';
import 'package:hng_timbu_app/views/product_details.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductPageController());
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('SWISS-SHOP',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black),
      body: FutureBuilder(
          future: controller.getProduct(),
          builder: (context, AsyncSnapshot<GetProductsModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting &&
                snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xffE5571A),
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              final getProductList = snapshot.data!.items;
              print('LIST-$getProductList');
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
                      String? productImage = products.photos.isNotEmpty
                          ? '$imageUrl${products.photos[0].url}'
                          : null;
                      print('$productImage');
                      return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsPage(products: products),
                              )),
                          child: ProductCardWidget(
                              imageCard: productImage,
                              cardTitle: products.name,
                              cardPrice:
                                  '₦${products.currentPrice[0].ngn[0]}'));
                    }),
              );
            } else {
              return const Center(child: Text('Empty'));
            }
          }),
    );
  }
}
