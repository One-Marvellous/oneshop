import 'package:flutter/material.dart';
import 'package:oneshop/constants/colors.dart';
import 'package:oneshop/constants/utils.dart';
import 'package:oneshop/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final Function(Product) addToCheckout;

  const ProductDetailScreen(
      {super.key, required this.product, required this.addToCheckout});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('lib/assets/images/${product.imageUrl}.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 32.0),
                        ),
                        const SizedBox(height: 16.0),
                        // Description
                        const Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16.0),
                        Text(product.description),
                        const SizedBox(height: 20.0),

                        // Features
                        const Text(
                          'Features',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16.0),
                        Text(product.features),
                        const SizedBox(height: 20.0),

                        // Specifications
                        const Text(
                          'Specifications',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16.0),
                        Text(product.specifications),
                        const SizedBox(height: 20.0),
                        Text(
                          'Quantity available: ${product.quantity}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 20.0),

                        // Add to Cart

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 50),
                                backgroundColor: AppColors.primaryColor,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(15)),
                            onPressed: () => addToCart(product, context),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Add To Cart',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.shopping_cart,
                                ),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        // Navigation button
        SafeArea(
            child: Container(
          margin: const EdgeInsets.only(left: 16),
          decoration: const BoxDecoration(
              color: AppColors.primaryColor, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () => navigateBack(context),
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )),
        ))
      ],
    );
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }

  addToCart(Product product, BuildContext context) {
    addToCheckout(product);
    Navigator.pop(context);
    showSnackbar(context, "Product added to cart");
  }
}
