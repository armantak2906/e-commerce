import 'package:e_commerce/cart_page.dart';
import 'package:e_commerce/home_page.dart';
import 'package:flutter/material.dart';

import 'home_page_2.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NaigationState();
}

class _NaigationState extends State<Navigation> {
  int selectedIndex = 0;

  List<Widget> navPages = [
    HomePage(),
    HomePage2(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:navPages[selectedIndex],
      bottomNavigationBar: NavigationBar(
    destinations: [
    NavigationDestination(icon:Icon(Icons.home),label: "Home"),
    NavigationDestination(icon:Icon(Icons.favorite_border),label: "Favroite's"),
    NavigationDestination(icon:Icon(Icons.shopping_cart),label: "My cart"),
    NavigationDestination(icon:Icon(Icons.account_circle_outlined),label: "Contact"),
    ],
    selectedIndex: selectedIndex,
    onDestinationSelected: (value){
    selectedIndex = value;

    setState(() {

    });
    }),
    );
  }
}
//