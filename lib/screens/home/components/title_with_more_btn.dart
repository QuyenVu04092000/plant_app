import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class TitleWithCustomUnderLine extends StatelessWidget{
  const TitleWithCustomUnderLine({Key key, this.text}):
        super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 4 ),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2)
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget{
  const TitleWithMoreBtn({Key key, this.title, this.press}):
        super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderLine(text: title,),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: kPrimaryColor,
              onPressed: (){
                press;
              },
              child: Text("More"))
        ],
      ),
    );
  }
}