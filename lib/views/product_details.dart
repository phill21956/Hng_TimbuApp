import 'package:flutter/material.dart';


class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.products});
  final products;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
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
                      child: Image.asset(widget.products.imageCard,
                          fit: BoxFit.fill),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        widget.products.cardTitle,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        widget.products.cardPrice,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow),
                          onPressed: () {},
                          child: const Center(child: Text('Add to Cart'))),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'More Details',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Gear up with the latest collections from adidas Originals, Running, Football, Training. With over 20,000+ products, you will never run out of choice. Grab your favorites now. Secure Payments. 100% Original Products. Gear up with adidas.',
                        style: TextStyle(color: Color(0xffaaa8a8)),
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
                        color: Colors.yellow,
                        shape: const CircleBorder(),
                        child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back)),
                      ),
                      Card(
                        color: Colors.yellow,
                        shape: const CircleBorder(),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.share)),
                      )
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
