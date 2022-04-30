import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/buy_and_des_btn.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(height: kDefaultPadding,),
          BuyAndDesBtn(),
        ],
      ),
    );
  }
}

