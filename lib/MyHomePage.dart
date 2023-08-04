import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppbar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            FoodListview(),
            SizedBox(height: 16.0),
            SelectTypeSection(),
            SizedBox(height: 16.0),
            MenuItemList(),
          ],
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(height: 4.0,),
              Text('Menu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
            ],
          ),
        ),),
    );
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(padding: const EdgeInsets.only(top: 8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.home),
              Text('Home', style: TextStyle(fontSize: 12.0),)
            ],
          ),
          Container(
            width: 100.0,
          ),
          Column(
            children: <Widget>[
              Icon(Icons.shopping_cart,
              color: Colors.black45,),
              Text('Keranjang',style: TextStyle(fontSize: 12.0),)
            ],
          )
        ],),),
        
      ),
    );
  }
}
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class FoodListview extends StatelessWidget {
  const FoodListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 300.0,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/pecel1.jpg'),fit: BoxFit.cover)
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)
              ),
            ),
            Padding(padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                Text('Promo 20%', style: TextStyle(color: textYellow,fontWeight: FontWeight.bold,fontSize: 24.0,letterSpacing: 1.1),),
                Text('Untuk 10 Pembeli Pertama', style: TextStyle(color: Colors.white,fontSize: 16.0,letterSpacing: 1.1),)
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Container(
              height: 92.0,
              width: 120.0,
              color: green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.bowlRice,
                    color: greenLight,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Menu Spesial',style: TextStyle(color: greenLight,fontWeight: FontWeight.w500),)
                ],
              ),
            ),),
            Container(
              height: 92.0,
              width: 120.0,
              color: red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: redLight,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Menu Terlaris',style: TextStyle(color: redLight,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: blueLight,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Minuman',style: TextStyle(color: blueLight,fontWeight: FontWeight.w500),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItemList extends StatelessWidget {
  const MenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Menu Populer',style: TextStyle(fontSize: 22.0,color: Colors.black54),),
          SizedBox(height: 16.0,),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset('assets/images/pecel2.png',fit: BoxFit.cover,),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: iconYellow,
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 15.0,
                      ),
                      Text('4.5')
                    ],
                  ),),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text('Pecel Sambel Tumpang', style: TextStyle(fontWeight: FontWeight.w600),),
                Container(
                  width: 200.0,
                  child: Text('Pecel,Sambel Tumpang, Telur, sate usus, ramban, ...', style: TextStyle(color: Colors.grey),),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}