

import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyAndDesBtn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        SizedBox(
          height: 84,
          width: size.width /2,
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            color: kPrimaryColor,
            onPressed: (){},
            child: Text(
              "Buy now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
            child: SizedBox(
              height: 84,
              width: size.width /2,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
                onPressed: (){},
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )
        )
      ],
    );
  }
}