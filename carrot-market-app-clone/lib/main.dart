import 'dart:js';

import 'package:contact/next_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes:{
      "/" : (context) => MainPage(),
      "/next" : (context) => NextScreen()
    },
  ));
}
// IconButton(icon: Icon(Icons.search), onPressed: (){}),

//stless
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text('선부' ,
                style: TextStyle(
                    color: Colors.black
                ),),
              Icon(Icons.keyboard_arrow_down, color: Colors.black,)
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.search , color: Colors.black,), onPressed: (){},),
            IconButton(icon: Icon(Icons.menu), color: Colors.black, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
            },),
            IconButton(icon: Icon(Icons.notifications, color: Colors.black,), onPressed: (){},)
          ],
        ),
        body: ListView(
         children: [ShopItem(),ShopItem(),ShopItem(),ShopItem(),ShopItem()],
        )
      );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(flex:1 ,
            child: SizedBox.fromSize(child: Image.asset("suji.png")),),
          Flexible(flex:2 ,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 2,
                child: SizedBox.fromSize(
                  child:
                  Text('Cannon DSLR (short lens , charger 16GB)' , style: TextStyle(fontSize: 20),),),),
              Flexible(flex: 1,
                child: SizedBox.fromSize(
                  child: Text('성동구 청담동 . 끌올 10분 전', style: TextStyle(color: Colors.grey),), ),),
              Flexible(flex: 1,
                child: SizedBox.fromSize(
                  child: Text('210,000' , style: TextStyle(fontSize: 15),),),)  ,
              Flexible(flex: 1,
                  child: SizedBox.fromSize(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.favorite) , Text('4' ,style: TextStyle(fontSize: 20))],
                    ),
                  ))
            ],),
          ),
        ],
      ),
    );
  }
}
