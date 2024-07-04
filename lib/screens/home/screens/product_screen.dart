import 'package:flutter/material.dart';
import 'package:oneshop/models/product.dart';
import 'package:oneshop/screens/home/screens/see_all_screen.dart';
import 'package:oneshop/screens/home/widgets/featured_products.dart';
import 'package:oneshop/screens/home/widgets/product_widget.dart';
import 'package:oneshop/screens/home/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<Product> products;
  final Function(Product) addToCheckout;

  const HomeScreen(this.products, this.addToCheckout, {super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Product> featuredProduct;
  @override
  void initState() {
    featuredProduct =
        widget.products.where((product) => product.isFeatured == true).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Featured',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Products',
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
              TextButton(
                  onPressed: () => seeAllFeaturedProduct(),
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          )),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 2
                      ? const EdgeInsets.only(left: 16, right: 16)
                      : const EdgeInsets.only(left: 16),
                  child: GestureDetector(
                    onTap: () => navigateFeaturedProduct(index),
                    child: FeaturedProduct(product: featuredProduct[index]),
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('All Products',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: () => seeAllProduct(),
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList.builder(
            itemCount: widget.products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: GestureDetector(
                    onTap: () => navigateAllProduct(index),
                    child: ProductWidget(product: widget.products[index])),
              );
            },
          ),
        )
      ],
    );
  }

  void navigateFeaturedProduct(int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ProductDetailScreen(
          product: featuredProduct[index], addToCheckout: widget.addToCheckout),
    ));
  }

  void navigateAllProduct(int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ProductDetailScreen(
          product: widget.products[index], addToCheckout: widget.addToCheckout),
    ));
  }

  seeAllProduct() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SeeAllScreen(
                  products: widget.products,
                  addToCheckout: widget.addToCheckout,
                  title: 'All Products',
                )));
  }

  seeAllFeaturedProduct() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SeeAllScreen(
                  products: featuredProduct,
                  addToCheckout: widget.addToCheckout,
                  title: 'Featured Products',
                )));
  }
}
