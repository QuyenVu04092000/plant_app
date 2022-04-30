
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendPlantCard extends StatelessWidget{

  const RecomendPlantCard({Key key, this.press, this.title, this.country, this.image, this.price}):
        super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.6,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)
                              )
                          )
                        ]
                    ),
                  ),
                  Spacer(),
                  Text('\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendsPlants extends StatelessWidget{

  const RecomendsPlants({Key key}):
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
              ));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}