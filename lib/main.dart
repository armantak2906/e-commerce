import 'package:e_commerce/bottom_naviga.dart';
import 'package:e_commerce/cart_page.dart';
import 'package:e_commerce/home_page.dart';
import 'package:e_commerce/home_page_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Navigation(),
    );
  }
}






