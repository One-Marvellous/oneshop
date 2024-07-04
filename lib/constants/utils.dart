import 'package:flutter/material.dart';
import 'package:oneshop/models/checkout_item.dart';

void showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      backgroundColor: Colors.grey,
      content: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    ));
}

String generateReciept(List<CartItem> cartItems) {
  int totalItems = 0;
  double totalPrice = 0;
  final reciept = StringBuffer();

  reciept.writeln();
  reciept.writeln();

  for (var cartItem in cartItems) {
    reciept.writeln(
        "${cartItem.quantity} x ${cartItem.product.name} - ${cartItem.product.price}");
    reciept.writeln('Price: \$${cartItem.quantity * cartItem.product.price}');
    totalPrice += cartItem.quantity * cartItem.product.price;
    totalItems += 1;
    reciept.writeln();
  }

  reciept.writeln();
  reciept.writeln('Total items: $totalItems');
  reciept.write('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  return reciept.toString();
}

String formatDateTime(DateTime dateTime) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  String year = dateTime.year.toString();
  String month = twoDigits(dateTime.month);
  String day = twoDigits(dateTime.day);
  String hour = twoDigits(dateTime.hour);
  String minute = twoDigits(dateTime.minute);
  String second = twoDigits(dateTime.second);

  return "$year-$month-$day $hour:$minute:$second";
}
