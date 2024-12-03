import 'package:build_n_trade/pages/market_textures.dart';
import 'package:build_n_trade/pages/market_elements.dart';
import 'package:build_n_trade/pages/market_views.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/cart.dart';
import 'pages/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(), // Initial screen
        '/home': (context) => HomePage(), // Route to HomePage
        '/market_textures': (context) => MarketTexturesPage(), // Route to MarketTuxturesPage
        '/market_elements': (context) => MarketElementsPage(), // Route to MarketElementsPage
        '/market_views': (context) => MarketViewsPage(), // Route to MarketViewsPage
       // '/trade': (context) => TradePage(), // Route to TradePage
        '/profile': (context) => ProfilePage(), // Profile Page
        '/cart': (context) => CartPage(), // Shopping Cart Page
        '/menu': (context) => MenuPage(), // Menu Page
      },
    );
  }
}
