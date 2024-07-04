import 'package:flutter/material.dart';
import 'package:oneshop/models/product.dart';
import 'package:oneshop/screens/home/widgets/product_widget.dart';
import 'package:oneshop/screens/home/screens/product_detail_screen.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen(
      {super.key,
      required this.products,
      required this.addToCheckout,
      required this.title});
  final List<Product> products;
  final Function(Product) addToCheckout;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(title),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
                onTap: () => navigateAllProduct(index, context),
                child: ProductWidget(product: products[index])),
          );
        },
      )),
    );
  }

  void navigateAllProduct(int index, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ProductDetailScreen(
          product: products[index], addToCheckout: addToCheckout),
    ));
  }
}
