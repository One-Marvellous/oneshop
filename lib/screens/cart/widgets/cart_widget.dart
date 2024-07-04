import 'package:flutter/material.dart';
import 'package:oneshop/models/product.dart';

class CartWidget extends StatelessWidget {
  const CartWidget(
      {super.key,
      required this.product,
      required this.quantity,
      required this.removeFromCheckout,
      required this.addToCheckout});
  final Product product;
  final int quantity;
  final Function(Product) removeFromCheckout;
  final Function(Product) addToCheckout;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'lib/assets/images/${product.imageUrl}.jpg',
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$${product.price}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${product.quantity} in stock',
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // increase
                GestureDetector(
                  onTap: () => decrement(product),
                  child: const Icon(Icons.remove),
                ),

                // count
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text('$quantity'),
                  ),
                ),

                // decrease
                GestureDetector(
                  onTap: () => increment(product),
                  child: const Icon(Icons.add),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  increment(Product product) {
    addToCheckout(product);
  }

  decrement(Product product) {
    removeFromCheckout(product);
  }
}
