import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'FoodListview.dart';
import 'MenuItemList.dart';
import 'SelectTypeSection.dart';

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
