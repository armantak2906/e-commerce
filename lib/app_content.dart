import 'dart:ui';

import 'package:flutter/material.dart';

class Photos
{
   static final List<Map<String,dynamic>>pic=[
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Beauty','pic':'images/asset/beauty.png'},
   {'name':'Women Fashion','pic':'images/asset/women fashion.png'},
   {'name':'Jewelary','pic':'images/asset/jewelery.png'},
   {'name':'Man Fashion','pic':'images/asset/man fashion.png'},
   {'name':'Electric','pic':'images/asset/electric.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   {'name':'Shoes','pic':'images/asset/shoes.png'},
   ];
}

class Earbuds
{
   static final List<Map<String,dynamic>>pic=[
      {'name':'Headphone','pic':'images/asset/61R4Tj5podL._SY450_.png'},
      {'name':'Beauty','pic':'images/asset/beauty.png'},
      {'name':'Women Fashion','pic':'images/asset/women fashion.png'},
      {'name':'Jewelary','pic':'images/asset/jewelery.png'},
      {'name':'Man Fashion','pic':'images/asset/man fashion.png'},
      {'name':'Electric','pic':'images/asset/electric.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
      {'name':'Shoes','pic':'images/asset/shoes.png'},
   ];
}

Container mycont({Color ? mycolor})
{
   return Container(
      height: 30,width: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: mycolor??Color(0xffff5f5f)),
   );
}

class Cart
{
   static final List<Map<String,dynamic>>list =[
      {'name':'Women Sweter','text':'Women Fashion','rupay':'\70.00','pic':'images/asset/sweter.png',},
      {'name':'Smart Watch','text':'Smart Watch','rupay':'\95.00','pic':'images/asset/watch.png'},
      {'name':'Mans Jeans','text':'Mans Jeans','rupay':'\165.00','pic':'images/asset/jeans.png'},
   ];
}
