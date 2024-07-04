import 'package:flutter/material.dart';
import 'package:oneshop/constants/utils.dart';
import 'package:oneshop/models/checkout_item.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key, required this.cartItems});
  final List<CartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          title: const Text('Order Successful'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Thank you for placing your order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(formatDateTime(DateTime.now())),
                      Text(generateReciept(cartItems)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
