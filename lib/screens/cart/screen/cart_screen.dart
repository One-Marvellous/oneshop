import 'package:flutter/material.dart';
import 'package:oneshop/constants/colors.dart';
import 'package:oneshop/models/checkout_item.dart';
import 'package:oneshop/models/product.dart';
import 'package:oneshop/screens/cart/widgets/cart_widget.dart';
import 'package:oneshop/screens/cart/screen/order_succesful.dart';

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems;
  final Function(Product) removeFromCheckout;
  final Function(Product) addToCheckout;
  final VoidCallback orderSuccess;
  final VoidCallback clearCart;

  const CartScreen({
    super.key,
    required this.cartItems,
    required this.removeFromCheckout,
    required this.orderSuccess,
    required this.addToCheckout,
    required this.clearCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Cart'),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: clearCart,
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartWidget(
                  product: cartItems[index].product,
                  quantity: cartItems[index].quantity,
                  removeFromCheckout: removeFromCheckout,
                  addToCheckout: addToCheckout,
                );
              },
            ),
          ),
          if (cartItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(15)),
                  onPressed: () => checkout(
                      context: context, cartItems: List.from(cartItems)),
                  child: const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 16),
                  )),
            )
        ],
      ),
    );
  }

  checkout({required BuildContext context, required List<CartItem> cartItems}) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => OrderSuccessScreen(
        cartItems: cartItems,
      ),
    ));
    orderSuccess();
  }
}
