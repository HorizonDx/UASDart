import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'MyHomePage.dart';

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