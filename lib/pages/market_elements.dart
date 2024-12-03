import 'package:flutter/material.dart';

class MarketElementsPage extends StatefulWidget {
  @override
  _MarketElementsPageState createState() => _MarketElementsPageState();
}

class _MarketElementsPageState extends State<MarketElementsPage> {
  int _currentIndex = 1;

  // List of textures (replace with your actual image paths)
  final List<Map<String, String>> textures = [
    {'image': 'elements/element1.jpeg', 'name': 'Element 1'},
    {'image': 'elements/element2.jpeg', 'name': 'Element 2'},
    {'image': 'elements/element3.jpeg', 'name': 'Element 3'},
    {'image': 'elements/element4.jpeg', 'name': 'Element 4'},
    {'image': 'elements/element5.jpeg', 'name': 'Element 5'},
    {'image': 'elements/element6.jpeg', 'name': 'Element 6'},
    {'image': 'elements/element7.jpeg', 'name': 'Element 7'},
    {'image': 'elements/element8.jpeg', 'name': 'Element 8'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 64),

          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // Category Name
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                'Elements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: 6),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    // Dynamically generate rows of textures
                    for (int i = 0; i < textures.length; i += 3)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int j = i; j < i + 3 && j < textures.length; j++)
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      margin: const EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: AssetImage(textures[j]['image']!),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      textures[j]['name']!,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),

          // Go To Cart/Your Account
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart'); // Navigate to Cart
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Go To Cart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/account'); // Navigate to Account
                  },
                  icon: Icon(Icons.person),
                  label: Text('Your Account'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/'); // Navigate to Home
                  break;
                case 1:
                  Navigator.pushNamed(context, '/profile'); // Navigate to Profile
                  break;
                case 2:
                  Navigator.pushNamed(context, '/cart'); // Navigate to Shopping Cart
                  break;
                case 3:
                  Navigator.pushNamed(context, '/menu'); // Navigate to Menu
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
        ],
      ),
    );
  }
}
