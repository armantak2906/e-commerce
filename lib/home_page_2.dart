import 'dart:ui';

import 'package:e_commerce/app_content.dart';
import 'package:e_commerce/ui.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Expanded(flex: 1,
             child:
         Container(height:400,width: double.infinity,
         color: Colors.grey,margin: EdgeInsets.only(top: 40),
         child:
           Stack(fit: StackFit.expand,
           children: [
              Image.asset("images/asset/61R4Tj5podL._SY450_.png",height: 300,fit: BoxFit.fill,),
             Row(crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_outlined,),),
                 Row(
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.share,)),
                     SizedBox(width: 20,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded)),],),],),],),),),
                       Expanded(flex: 1,child:
                         Container(
                           height: 400,width:double.infinity,
                           decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                           color: Color(0xfff5f5f5),),
                           child: Padding(
                             padding: EdgeInsets.all(10.0),
                             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     Text("Headphone",style: mTextStyle25(),)],),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("\$700.00",style: mTextStyle20(),),
                                             Row(
                                               children: [
                                                 Container(height: 30,width:70,
                                                   child:
                                                   Row(mainAxisAlignment: MainAxisAlignment.center,
                                                     children: [
                                                       Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.white,))),
                                                       Text("4:5",style: TextStyle(color: Colors.white),),
                                                     ],
                                                   ),
                                                     decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(35)),
                                                 ),
                                                 SizedBox(width: 5,),
                                                 Text("(480 Review)")
                                               ],),
                                           ],),
                                         Text("Seller : Digital World",style: mTextStyle20(),),],),
                                           SizedBox(height: 15,),
                                            Text("Color",style: mTextStyle20(),),
                                              Row(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  mycont(
                                                    mycolor: Colors.orange,
                                                  ),SizedBox(width: 10,),
                                                  mycont(
                                                    mycolor: Colors.black,
                                                  ), SizedBox(width: 10,),
                                                  mycont(
                                                    mycolor: Colors.blue,
                                                  ), SizedBox(width: 10,),
                                                  mycont(
                                                    mycolor: Colors.red,
                                                  ), SizedBox(width: 10,),
                                                  mycont(
                                                    mycolor: Colors.purple,
                                                  ), SizedBox(width: 10,),
                                                  mycont(
                                                    mycolor: Colors.green,
                                                  ),
                                                ],
                                              ),
                                 SizedBox(height: 20,),
                                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   TextButton(onPressed: (){}, child: Text("Deascrption",style: mTextStyle16(),),),
                                   TextButton(onPressed: (){}, child: Text("Specification",style: mTextStyle16(),),),
                                   TextButton(onPressed: (){}, child: Text("Reviews",style: mTextStyle16(),),),
                                 ],),
                                      Text("boAt Rockerz 425 Bluetooth Wireless On Ear Headphones Signature Sound, Enx Tech, ASAP Charge, 25H Playtime, Bluetooth V5.2, Dual Pairing with Mic (Ash Grey)",style: mTextStyle16(mFontcolor: Colors.black),),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(35),
                                        child: Container(width: 450,height: 60,color: Colors.black,
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         Container(width: 150,height: 40,
                                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             children: [
                                               Text("-",style: mTextStyle28(mFontcolor: Colors.black),),
                                               Text("1",style: mTextStyle28(mFontcolor: Colors.black),),
                                               Text("+",style: mTextStyle28(mFontcolor: Colors.black),),
                                             ],
                                           ),
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange),
                                         ),
                                         Container(width: 200,height: 50,
                                           child: TextButton(onPressed: (){}, child: Text("Add to Cart",style: mTextStyle20(mFontcolor: Colors.black),),),
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.orange),
                                         ),
                                       ],
                                                                               ),
                                                                         ),
                                                                       ),
                               ],

                             ),
                           ),
                         ),)
       ],
     ),
    );
  }
}
