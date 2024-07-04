import 'package:flutter/material.dart';
import 'package:oneshop/constants/colors.dart';
import 'package:oneshop/models/checkout_item.dart';
import 'package:oneshop/models/product.dart';
import 'package:oneshop/screens/cart/screen/cart_screen.dart';
import 'package:oneshop/screens/home/screens/product_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Product> products = Product.allProduct;
  List<CartItem> cartItems = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addToCheckout(Product product) {
    setState(() {
      int index = cartItems.indexWhere((item) => item.product == product);
      if (index >= 0) {
        if (cartItems[index].quantity < product.quantity) {
          cartItems[index].quantity++;
        }
      } else {
        cartItems.add(CartItem(product: product, quantity: 1));
      }
    });
  }

  void _removeFromCheckout(Product product) {
    setState(() {
      int index = cartItems.indexWhere((item) => item.product == product);
      if (index >= 0) {
        if (cartItems[index].quantity > 1) {
          cartItems[index].quantity--;
        } else {
          cartItems.removeAt(index);
        }
      }
    });
  }

  void _orderSuccess() {
    setState(() {
      for (var item in cartItems) {
        item.product.quantity -= item.quantity;
      }
      cartItems.clear();
    });
  }

  void _clearCart() {
    setState(() {
      cartItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(products, _addToCheckout),
      CartScreen(
          cartItems: cartItems,
          removeFromCheckout: _removeFromCheckout,
          addToCheckout: _addToCheckout,
          orderSuccess: _orderSuccess,
          clearCart: _clearCart),
    ];
    return Scaffold(
      body: SafeArea(child: screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
