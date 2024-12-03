import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currentIndex = 1; // Set the initial index to 1 for Profile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Cart Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/'); // Navigate to Home
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/profile'); // Navigate to Profile
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/cart'); // Navigate to Shopping Cart
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/menu'); // Navigate to Menu
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
