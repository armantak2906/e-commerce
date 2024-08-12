import 'package:e_commerce/app_content.dart';
import 'package:e_commerce/home_page_2.dart';
import 'package:e_commerce/ui.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController tak = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded)),
               IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),],),),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 400,
                child:TextField(
                  controller:tak,
                  decoration: InputDecoration(hintText: "Search",hintStyle: mTextStyle20(mFontcolor: Colors.black),
                    border: OutlineInputBorder(borderSide: BorderSide(),borderRadius: BorderRadius.circular(35)),
                    prefixIcon: Icon(Icons.search,size: 40,),
                    suffixIcon: Icon(Icons.menu_rounded,size: 40,),),) ,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),color: Color(0xfff5f5f5)),),),
            SizedBox(height: 10,),
            Stack(
                children:[ SingleChildScrollView(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 300,width: 600,
                      color: Colors.grey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text("Super Sale",style: mTextStyle25(),),
                                    Text("Discount",style: mTextStyle25(),),
                                    Row(
                                      children: [
                                        Text("Up  to",style: mTextStyle16(),),
                                        Text("50 %",style: mTextStyle25(),),],),
                                    ElevatedButton(onPressed: (){}, child: Text("BUY Now"),)],),
                                Image.asset("images/asset/front.png",width: 300,),],),),],),),),),]),
            SizedBox(height: 15,),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: Photos.pic.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(height: 80,width: 80,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(image: AssetImage(Photos.pic[index]["pic"]),fit: BoxFit.cover)),),
                      Text(Photos.pic[index]["name"] ?? 'default',textAlign: TextAlign.justify,)],);},),),
            SizedBox(height: 5,),
            Container(width: 400,height: 400,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Special For You",style: mTextStyle25(),),
                      Text("See all",style: mTextStyle16(),)],),
                  Container(height: 300,color: Color(0xfff5f5f5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return HomePage2();
                        }));
                      },
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 15,
                        childAspectRatio: 9/16,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 250,),
                          itemCount: Photos.pic.length,
                          itemBuilder: (_,index){
                            return Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(image: AssetImage(Earbuds.pic[index]["pic"] ?? "default",),fit: BoxFit.cover) ),
                            );
                          }),
                    ),)
                ],
              ),),
          ],
        ),
      ),




    );
  }
}
