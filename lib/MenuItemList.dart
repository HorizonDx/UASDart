import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'MyHomePage.dart';

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