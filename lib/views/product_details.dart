import 'package:flutter/material.dart';
import 'package:hng_timbu_app/utils/constants.dart';
import '../models/get_products_model.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.products});
  final Item products;

  @override
  Widget build(BuildContext context) {
    String? productImage = products.photos.isNotEmpty
        ? '$imageUrl${products.photos[0].url}'
        : null;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 350,
                      child: productImage != null
                          ? Image.network(productImage, fit: BoxFit.cover)
                          : Image.asset('assets/empty.png', fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        products.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        '₦${products.currentPrice[0].ngn[0]}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'More Details',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        products.description,
                        style: const TextStyle(color: Color(0xffaaa8a8)),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: const CircleBorder(),
                        child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
