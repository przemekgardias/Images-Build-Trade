import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('User Profile', style: TextStyle(fontSize: 24))),
    Center(child: Text('Shopping Cart', style: TextStyle(fontSize: 24))),
    Center(child: Text('Menu Options', style: TextStyle(fontSize: 24))),
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

          // Markets of Textures, Views, Elements
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/market_textures'); // Navigate to Market Textures
                  },
                  child: Text('Textures Mart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/market_elements'); // Navigate to Market Elements
                  },
                  child: Text('Elements Mart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/market_views'); // Navigate to Market Views
                  },
                  child: Text('Views Mart'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ],
            ),
          ),

          // Application Title with Background Banner
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                'Your world',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: 16),

          // Single Image Above the Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/image_world.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 16),

          // Row of Three Pictures with Titles
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/image1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Maps',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/image2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Clusters',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/image3.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Transitions',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Spacer(),

          // Advertisement banner
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blueGrey, width: 2),
            ),
            child: Center(
              child: Text(
                'Advertisement Banner',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          // Row of Upload/Download Icons and Text in One Row
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100], // Optional background color
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      'Upload/Download',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 48),
                    Icon(Icons.cloud_upload, color: Colors.blueAccent),
                    SizedBox(width: 8),
                    Icon(Icons.cloud_download, color: Colors.blueAccent),
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),

          // Bottom Navigation Bar
          BottomNavigationBar(
            currentIndex: _currentIndex,
           onTap: (index) {
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
