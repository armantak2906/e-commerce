import 'package:e_commerce/home_page.dart';
import 'package:e_commerce/ui.dart';
import 'package:flutter/material.dart';

import 'app_content.dart';

class CartPage extends StatelessWidget {
  TextEditingController tak = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Center(
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,),),
              SizedBox(width: 100,),
              Text("My Cart",style: mTextStyle25(),),],),),),
      body: Column(
        children: [
          Expanded(flex: 2,
              child: ListView.builder(
                  itemCount: Cart.list.length,
                  itemBuilder:(context, index)
                  {
                    return Container(height: 150,width: 350,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xfff5f5f5)),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 150,width: 150,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Cart.list[index]['pic']),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),),
                          Container(width: 200,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(Cart.list[index]['name'],style: mTextStyle16(),),
                                    Icon(Icons.delete_forever,size: 30,color: Colors.orangeAccent,),
                                  ],),
                                Text(Cart.list[index]['text']),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(Cart.list[index]['rupay'],style: mTextStyle16(),),
                                    Container(
                                      height: 30,width: 120,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xfff5f5f5),),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(onPressed: (){}, icon: Icon(Icons.minimize,color: Colors.black,size: 15,)),
                                          Text("1"),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,size: 15,)),
                                        ],),),],),],),),],),);})),
                                Container(
                                  height: 300,
                                  width: double.infinity,
                                  color: Colors.white70,
                                  child: Column(
                                    children: [
                                      TextField(
                                        controller:tak,
                                        decoration: InputDecoration(hintText: "Enter Discount Code",hintStyle: mTextStyle20(mFontcolor: Colors.grey),
                                          border: OutlineInputBorder(borderSide: BorderSide(),borderRadius: BorderRadius.circular(35)),
                                          suffixIcon: Text("Apply",style: mTextStyle16(mFontcolor: Colors.redAccent),),),),
                                         SizedBox(height: 15,),
                                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [

                                             Text("Subtotal",style: mTextStyle25(mFontcolor: Colors.grey),),
                                             Text("\$354.00",style: mTextStyle25(),),
                                           ],
                                         ),
                                      SizedBox(height: 15,),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text("Total",style: mTextStyle25(),),
                                          Text("\$354.00",style: mTextStyle25(),),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Container(height: 70,
                                          width: double.infinity,
                                          child: TextButton(onPressed: (){
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                                              return HomePage();
                                            }));
                                          }, child: Text("Checkout",style: mTextStyle20(mFontcolor: Colors.white),)),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),color: Colors.orange),)
                                    ],
                                  ) ,

                                ),
        ],
      ),
    );
  }
}
